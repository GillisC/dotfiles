#!/usr/bin/env bash
OVERWRITE=false
KEY_PATH="$HOME/.ssh/id_ed25519"

while getopts "o" opt; do
    case $opt in
        o) OVERWRITE=true ;;
        *) echo "usage: $0 [-o] email@domain.com"
    esac
done

print_key() {
    echo "your public key:"
    echo "--------------------------------------------"
    cat "${KEY_PATH}.pub"
    echo "--------------------------------------------"
}

shift $((OPTIND - 1))
USER_EMAIL=$1

if [ -z "$USER_EMAIL" ]; then
    echo "usage: $0 [-o] email@domain.com"
    exit 1
fi

if [ -f "$KEY_PATH" ] && [ "$OVERWRITE" = false ]; then
    echo "key already exist at $KEY_PATH, skipping generating new one"
    echo "use the -o flag to overwrite it"
    print_key
    exit 1
fi

if [ "$OVERWRITE" = true ]; then
    echo "overwriting existing key..."
    echo "y" | ssh-keygen -t ed25519 -C "$USER_EMAIL" -f "$KEY_PATH" -N ""
    print_key
else
    ssh-keygen -t ed25519 -C "$USER_EMAIL" -f "$KEY_PATH" -N ""
    echo "new ssh key generated for $USER_EMAIL"
    print_key
fi

