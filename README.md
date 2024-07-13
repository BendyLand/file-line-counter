# File Line Counter

Counts the number of non-empty lines of a given file type.

## Usage

If you would like to use this tool, you can grab the code in any number of ways (clone the repo, copy and paste the code, etc.), then run it like so:
```bash
./script.sh <target-dir> <file-extension>
```

 - (If the file does not automatically come with executable permissions, you can update them with `chmod +x script.sh`.)
 - (Alternatively, you can run the file with `bash script.sh`.)

Personally, I:
 - Added executable permissions to the file (`chmod +x script.sh`).
 - changed the file name to "count-code" (`cp script.sh count-code`).
 - Moved the file to my path (`sudo mv count-code /usr/local/bin`)

Now I can check files from anywhere in the terminal, as seen in the examples below.

## Examples

```bash
blnote % count-code . go
# Output: 
# Reading ./note/note.go...
# Reading ./cmd/cmd.go...
# Reading ./utils/utils.go...
# Reading ./node/node.go...
# Reading ./main.go...
# Finished reading go files!
# Total number of lines with text in *.go files: 247
```

```bash
blfmt % count-code src rs
# Output:
# Reading src/format.rs...
# Reading src/options.rs...
# Reading src/main.rs...
# Reading src/group.rs...
# Reading src/parser.rs...
# Reading src/utils.rs...
# Finished reading rs files!
# Total number of lines with text in *.rs files: 820
```

Be careful though, because it will count everything, whether you want it to or not...

```bash
blfmt % count-code planning py
# Output:
# (There were several hundreds of lines above these ones as well...)
# Reading planning/env/lib/python3.12/site-packages/pip/_vendor/platformdirs/windows.py...
# Reading planning/env/lib/python3.12/site-packages/pip/_vendor/platformdirs/__main__.py...
# Reading planning/env/lib/python3.12/site-packages/pip/__init__.py...
# Reading planning/env/lib/python3.12/site-packages/pip/__pip-runner__.py...
# Reading planning/env/lib/python3.12/site-packages/pip/__main__.py...
# Reading planning/utils.py...
# Reading planning/my_format.py...
# Reading planning/group.py...
# Reading planning/script.py...
# Finished reading py files!
# Total number of lines with text in *.py files: 354565
```

### Notes

While I have mainly been referencing this tool as something to use with programming language files, technically it will work with any kind of text file. That is the reason that the repository itself is not named "count-code" (or any variations, like "code-line-counter"), like I used for the executable name in my examples above. I wanted the name of the project to reflect the actual usage possibilities, not my expected usage.
