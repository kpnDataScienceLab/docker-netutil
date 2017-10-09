# Netdebug

bundle of networking tools to support debugging

Usage `nc` with default args (timeout 2 seconds):

`docker run -ti --rm netdebug:nc google.com 80`

Usage `curl`:

`docker run -ti --rm netdebug:curl google.com`

Usage `nslookup`:

`docker run -ti --rm netdebug:nslookup google.com`

Latest tag is set to default entrypoint `sh`

`docker run -ti --rm netdebug`

same as

`docker run -ti --rm --entrypoint sh netdebug`


### Summary supported commands
```
traceroute --tcp --port=443 google.com
nc -zvw 2 google.com 443
curl localhost
dig google.com
```

https://pkgs.alpinelinux.org/package/v3.4/main/armhf/bind-tools
