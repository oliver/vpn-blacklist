# vpn-blacklist
Keys blocked from connecting to our VPN servers.

Format of `blacklist.json`:
```json
{
    "peers": [
        {
            "key": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
            "reason": "Meshed different communities",
            "added": "2015-01-16T21:06+0100"
        }
    ],
    "updated": "2015-01-16T21:06+0100"
}
```
All timestamps are in ISO 8601 format and can for example be generated using `date -Iminutes`.
