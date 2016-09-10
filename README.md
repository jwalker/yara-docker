## Yara Docker

Currently a quick and dirty yara container

More documentation to come later....maybe

### Quick install

```
git clone https://github.com/jwalker/yara-docker.git
cd yara-docker
docker build -t yara-docker .
```

### Yara --help
```
docker run -it yara-alpine yara --help
```
```
YARA 3.5.0, the pattern matching swiss army knife.
Usage: yara [OPTION]... RULES_FILE FILE | DIR | PID

Mandatory arguments to long options are mandatory for short options too.

  -t,  --tag=TAG                   print only rules tagged as TAG
  -i,  --identifier=IDENTIFIER     print only rules named IDENTIFIER
  -n,  --negate                    print only not satisfied rules (negate)
  -D,  --print-module-data         print module data
  -g,  --print-tags                print tags
  -m,  --print-meta                print metadata
  -s,  --print-strings             print matching strings
  -e,  --print-namespace           print rules' namespace
  -p,  --threads=NUMBER            use the specified NUMBER of threads to scan
a directory
  -l,  --max-rules=NUMBER          abort scanning after matching a NUMBER of
rules
  -d VAR=VALUE                     define external variable
  -x MODULE=FILE                   pass FILE's content as extra data to MODULE
  -a,  --timeout=SECONDS           abort scanning after the given number of
SECONDS
  -k,  --stack-size=SLOTS          set maximum stack size (default=16384)
  -r,  --recursive                 recursively search directories
  -f,  --fast-scan                 fast matching mode
  -w,  --no-warnings               disable warnings
  -v,  --version                   show version information
  -h,  --help                      show this help and exit

Send bug reports and suggestions to: vmalvarez@virustotal.com.
```
