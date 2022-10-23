function Get-Ignore {
    param (
        [Parameter(Mandatory=$true)][string]$Type
    )
    try {
        Invoke-WebRequest -Uri "https://raw.githubusercontent.com/github/gitignore/main/$Type.gitignore" -OutFile .gitignore
    } catch {
        try {
            $titleCase = $Type.Substring(0,1).ToUpper()+$Type.Substring(1)
            Invoke-WebRequest -Uri "https://raw.githubusercontent.com/github/gitignore/main/$titleCase.gitignore" -OutFile .gitignore
        } catch {
            Write-Error "Unable to find .gitignore for '$Type' or '$titleCase'."
        }
    }
}

Get-Ignore $args[0]