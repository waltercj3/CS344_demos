# stdinread: capture data from stdin and direct it to a temp file
#!/bin/bash
cat > "tempfile" # the terminal waits here for input, only continuing when you hit CTRL-D (EOF)
cat tempfile