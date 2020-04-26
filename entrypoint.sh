#!/bin/sh

echo "Inspecting '$PWD'"

echo "Checking formatting..."
test -z $(go fmt ./...)

echo "Vetting..."
CGO_ENABLED=0 go vet ./...

echo "Linting..."
golint -set_exit_status
