set shell := ["bash", "-cu"]
set windows-shell := ["pwsh", "-Command"]

scripts := "scripts/*"

# Default action
_:
    just --list -u

# Format code
fmt:
    shfmt \
    --write \
    --indent 4 \
    --case-indent \
    --space-redirects \
    ./{{scripts}}

# Lint code
lint:
    shellcheck ./{{scripts}}

# Check code
check:
    just fmt
    just lint
