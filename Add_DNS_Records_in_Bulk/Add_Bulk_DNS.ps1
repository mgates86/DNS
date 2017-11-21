$csv = Import-Csv c:\subfolder\records.csv
foreach ($line in $csv) {
  	Add-DnsServerResourceRecord -ZoneName "domain.com" -A -Name $line.Hostname -IPv4Address $line.IP 
}