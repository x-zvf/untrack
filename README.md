# untrack.pl
---

remove tracking query parameters from URLs.

---

See the `filterrules` file for all parameters filtered.

### USAGE

```
./untrack.pl <URL>
```

### EXAMPLES
```
~$ ./untrack.pl 'https://example.com/bar/baz'
https://example.com/bar/baz
~$ ./untrack.pl 'https://example.com/bar/baz?keepme=1&utm_referrer=abc'
https://example.com/bar/baz?keepme=1
~$ ./untrack.pl 'http://example.com/foo/bar?leaveme=1&metoo=2&utm=foooo&ilive[]=yclid&yclid=abcdf'
http://example.com/foo/bar?leaveme=1&metoo=2&ilive[]=yclid
```

### LICENSE
Copyright (C) 2020 (xzvf)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

