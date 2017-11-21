Write-Host "*******************"
Write-Host "**               **"
Write-Host "** Current Value **"
Write-Host "**               **"
Write-Host "*******************"
Get-DnsServerResourceRecord -ZoneName "domain.com" -Name "cas"
Get-DnsServerResourceRecord -ZoneName "domain.com" -Name "webmail"


Pause


Write-Host "Changing Records.........."

Add-DnsServerResourceRecordCName -Name "cas" -HostNameAlias "bostoncas-bos.domain.com" -ZoneName "domain.com"
Add-DnsServerResourceRecordCName -Name "webmail" -HostNameAlias "webmail-bos.domain.com" -ZoneName "domain.com"



Write-Host "*******************"
Write-Host "**               **"
Write-Host "**   New Value   **"
Write-Host "**               **"
Write-Host "*******************"


Get-DnsServerResourceRecord -ZoneName "domain.com" -Name "cas"
Get-DnsServerResourceRecord -ZoneName "domain.com" -Name "webmail"

Pause