silos () {
  INSH="\"$@ in sh\""
  (curl http://localhost:8000/api/v1/get --silent --json "{ \"desc\": $INSH }" | jq -r .[0] | base64 -w0 | \
  python -c "import fcntl; import termios; import base64;
for c in base64.b64decode(input()).decode().strip(): fcntl.ioctl(1, termios.TIOCSTI, c)" &)
}

bind '"\C-g": "\C-asilos \e[C\C-m"'
