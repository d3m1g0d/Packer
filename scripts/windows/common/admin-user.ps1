# Configures the Administrator user.
# @author Adrian Heissler

<#
    .DESCRIPTION
    Configures the Administrator user.
#>

$ErrorActionPreference = 'Stop'

# Disable password expiration
Write-Output 'Disabling password expiration for the local Administrator user ...'
Set-LocalUser Administrator -PasswordNeverExpires $true