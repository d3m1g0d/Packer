# Configures a static ip address.
# @author Adrian Heissler

<#
    .DESCRIPTION
    Configures a static ip address.
#>

# Configure a static ip address.
%{ if ip != null ~}
Write-Output 'Setting a static ip address...'
$adapter = Get-NetAdapter
$adapter | Remove-NetIpAddress -Confirm:$false
$adapter | Remove-NetRoute -Confirm:$false
$adapter | New-NetIpAddress -IpAddress ${ip} -PrefixLength ${netmask} -DefaultGateway ${gateway}
$adapter | Set-DnsClientServerAddress -ServerAddresses %{ for item in dns ~} ${item} %{ endfor ~}
%{ else ~}
Write-Output 'Configuring a dhcp address...'
%{ endif ~}