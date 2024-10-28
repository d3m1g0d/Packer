# Installs and configures Cloudbase-Init.
# @author Adrian Heissler

<#
    .DESCRIPTION
    Installs and configures Cloudbase-Init.
#>

$ErrorActionPreference = 'Stop'

# Install Cloudbase-Init
Write-Output 'Installing Cloudbase-Init...'
$installerLocation = 'https://cloudbase.it/downloads'
$installerFileName = 'CloudbaseInitSetup_Stable_x64.msi'
Invoke-WebRequest -Uri ($installerLocation + '/' + $installerFileName) -OutFile C:\$installerFileName
Unblock-File -Path C:\$installerFileName
Start-Process msiexec.exe -ArgumentList "/i C:\$installerFileName /qn /norestart SYSPREP=0 SYSPREPSHUTDOWN=0 RUN_SERVICE_AS_LOCAL_SYSTEM=1" -Wait

# Configure Cloudbase-Init
Write-Output 'Configuring Cloudbase-Init...'
$confFile = 'cloudbase-init.conf'
$confPath = "C:\Program Files\Cloudbase Solutions\Cloudbase-Init\conf\"
$confContent = @"
[DEFAULT]
first_logon_behaviour=no
bsdtar_path=C:\Program Files\Cloudbase Solutions\Cloudbase-Init\bin\bsdtar.exe
mtools_path=C:\Program Files\Cloudbase Solutions\Cloudbase-Init\bin\
verbose=true
debug=true
logdir=C:\Program Files\Cloudbase Solutions\Cloudbase-Init\log\
logfile=cloudbase-init.log
default_log_levels=comtypes=INFO,suds=INFO,iso8601=WARN,requests=WARN
local_scripts_path=C:\Program Files\Cloudbase Solutions\Cloudbase-Init\LocalScripts\
metadata_services=cloudbaseinit.metadata.services.ovfservice.OvfService
plugins=cloudbaseinit.plugins.windows.createuser.CreateUserPlugin,cloudbaseinit.plugins.windows.setuserpassword.SetUserPasswordPlugin,cloudbaseinit.plugins.common.sshpublickeys.SetUserSSHPublicKeysPlugin,cloudbaseinit.plugins.common.userdata.UserDataPlugin
"@
New-Item -Path $confPath -Name $confFile -ItemType File -Force -Value $confContent | Out-Null

# Start Cloudbase-Init service
Write-Output 'Starting Cloudbase-Init service...'
Start-Process sc.exe -ArgumentList "config cloudbase-init start= delayed-auto" -wait | Out-Null

# Clean up
Write-Output 'Cleaning up unneeded Cloudbase-Init artifacts...'
Remove-Item -Path ($confPath + "cloudbase-init-unattend.conf") -Confirm:$false 
Remove-Item -Path ($confPath + "Unattend.xml") -Confirm:$false 
Remove-Item C:\$installerFileName -Confirm:$false