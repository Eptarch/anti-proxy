var proxy = "SOCKS5 127.0.0.1:9050";
var whitelist = [ ]
function FindProxyForURL(url, host)
{
    if (dnsDomainIs(host, ".onion")) return proxy;
    for (var whitelistedHost of whitelist ) {
        if (host === whitelistedHost || dnsDomainIs(host, "." + whitelistedHost)) return proxy;
    }
    return DIRECT;
}
