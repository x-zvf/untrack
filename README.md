# untrack.pl

remove tracking query parameters from URLs.
===

See the `filterrules` file for all parameters filtered.

### USAGE:

```
./untrack.pl <URL>
```

### examples
```
~$ ./untrack.pl 'https://example.com/bar/baz'
https://example.com/bar/baz
~$ ./untrack.pl 'https://example.com/bar/baz?keepme=1&utm_referrer=abc'
https://example.com/bar/baz?keepme=1
~$ ./untrack.pl 'http://example.com/foo/bar?leaveme=1&metoo=2&utm=foooo&ilive[]=yclid&yclid=abcdf'
http://example.com/foo/bar?leaveme=1&metoo=2&ilive[]=yclid
```

### LICENSE
Licensed under GPLv3, see LICENSE FILE

