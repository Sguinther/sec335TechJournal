


param($network, $server)

$range = 1..254

$(Foreach ($add in $range)
{ 
$ip = ("{0}.{1}" -F $network,$add)

Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore | Select Name, Namehost

})
