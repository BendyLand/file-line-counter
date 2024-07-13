# Code Line Counter

Count the number of non-empty lines of a given file type.

## Usage

./script.sh <target-dir> <file-extension>

(If the file does not automatically come with executable permissions, you can update them with chmod +x script.sh.)
(Alternatively, you can run the file with bash script.sh.)

Personally, I:
 - Added executable permissions to the file (chmod +x script.sh).
 - changed the file name to "count-code".
 - Moved the file to my path (/usr/local/bin)

Now I can check files from anywhere in the terminal, as seen in the examples below.

## Examples

```bash
count-code . go
# Output: Total number of lines with text in *.go files: 247
```

```bash
count-code src rs
Total number of lines with text in *.rs files: 820
```

