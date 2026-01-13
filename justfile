set shell := ["bash", "-cu"]
set windows-shell := ["powershell"]

scripts := "scripts/*"

# Default action
_:
    just lint
    just fmt

# Lint code
lint:
    shellcheck ./{{scripts}}

# Format code
fmt:
    shfmt \
    --write \
    --indent 4 \
    --case-indent \
    --space-redirects \
    ./{{scripts}}
