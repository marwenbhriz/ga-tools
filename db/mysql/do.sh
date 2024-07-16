#!/bin/bash

generate_password () {
    length=${1-32}  
    LC_ALL=C < /dev/urandom tr -dc A-Za-z0-9 | head -c$length
}

create_new_passwords () {
    if [ -f 'secrets/user.password' ] && [ -f 'secrets/root.password' ] && [ -f 'secrets/repl.password' ]; then
        echo "Password files exist. Please move them first."
        exit 1
    fi
    mkdir -p secrets/
    generate_password > secrets/user.password
    generate_password > secrets/root.password
    generate_password > secrets/repl.password
    cat <<EOF
Done!

Created secrets/user.password
Created secrets/root.password
Created secrets/repl.password
EOF
}

$*