#!/bin/bash

# Define the version number
VERSION="v0.1.0"

# Function to display help message
function show_help() {
    echo "Interns Control Tool $VERSION"
    echo "Usage: internsctl [operation]"
    echo "Operations:"
    echo "  greet               - Display a welcome message"
    echo "  introduce [name]    - Introduce yourself with the given name"
    echo "  version             - Display the command version"
}

# Main function to handle operations
function main() {
    case "$1" in
        greet)
            echo "Welcome to Interns Control Tool! Have a great day!"
            ;;
        introduce)
            if [ -z "$2" ]; then
                echo "Please provide your name after 'introduce' operation."
            else
                echo "Nice to meet you, $2!"
            fi
            ;;
        version)
            echo "Interns Control Tool $VERSION"
            ;;
        *)
            show_help
            ;;
    esac
}

# Check if at least one argument is provided
if [ $# -lt 1 ]; then
    show_help
else
    main "$1" "$2"
fi
