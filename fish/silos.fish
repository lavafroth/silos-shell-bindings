function silos
    curl http://localhost:8000/api/v1/get --silent --json "{ \"desc\": \"$argv in fish\" }" | jq -r .[0]
end
