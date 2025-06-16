function silos
    set SILOS_OUTPUT (curl http://localhost:8000/api/v1/get --silent --json "{ \"desc\": \"$argv in fish\" }" | jq -r .[0])
    commandline --replace "$SILOS_OUTPUT"
end
