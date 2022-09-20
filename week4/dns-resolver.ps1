
param($network, $server)

$range = 1..254

$(Foreach ($i in $range)
{ 
$ip = ("{0}.{1}" -F $network,$i)

Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore | Select Name, Namehost

})
