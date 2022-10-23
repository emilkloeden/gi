# gi

(Short for _get_-ignore, itself a bad pun on `.gitignore`)

A Powershell and Bash script to save a language-specific `.gitignore` file from https://github.com/github/gitignore to the current working directory.

## Usage

### Windows

- Git clone this repo
- Copy `gi.ps1` somewhere.
- Add that location to your `PATH` variable
- Navigate to your project directory
- Run `.\gi.ps1 <LANGUAGE_NAME>`

### Linux

- Git clone this repo
- Copy `gi` somewhere.
- Add that location to your `$PATH` variable
- Navigate to your project directory
- Run `chmod u+x gi` to ensure the script is executable.
- Run `.\gi <LANGUAGE_NAME>`
