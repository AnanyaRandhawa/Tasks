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

# Function to display manual page
function show_manual() {
    echo "INTERNSSCTL(1)                         User Commands                         INTERNSSCTL(1)"
    echo ""
    echo "NAME"
    echo "       internsctl - Control tool for interns"
    echo ""
    echo "SYNOPSIS"
    echo "       internsctl [operation]"
    echo ""
    echo "DESCRIPTION"
    echo "       internsctl is a command line tool for interns to perform various operations."
    echo ""
    echo "OPERATIONS"
    echo "       greet"
    echo "              Display a welcome message."
    echo ""
    echo "       introduce [name]"
    echo "              Introduce yourself with the given name."
    echo ""
    echo "       version"
    echo "              Display the command version."
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
        --help)
            show_help
            ;;
        *)
            show_manual
            ;;
    esac
}

# Check for arguments
if [ "$#" -eq 0 ]; then
    show_manual
else
    main "$1" "$2"
fi
