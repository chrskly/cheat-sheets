# bash

## Long strings

### += operator
```
text="blah blah blah"
text+="blah blah blah"
```
### += operator and newlines/tabs
```
text=$'blah blah blah\n'
text+=$'blah blah blah'
```

### printf
```
printf -v text "%s"\
  "blah blah blah" \
  "blah blah blah"
```

### Arrays
```
text=("blah blah blah"
      "blah blah blah")
text+=("blah blah blah")
echo "${text[*]}"
```

### here-document
```
read -r -d '' text <<-"EOT"
  blah blah blah
  blah blah blah
EOT
```


## Colourising terminal output

You can use these ANSI escape codes:

Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37
And then use them like this in your script:

     .---------- constant part!
     vvvv vvvv-- the code from above
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "I ${RED}love${NC} Stack Overflow\n"
