<#
 # * bootstrap.ps1
 #
 # * Creates a new Python project for VS Code with Yuri's settings
 #
 # ! Disclaimer: I'm not a PowerShell power user... 
 #
 # * -- Yuri - Oct 2021
#>

Write-Output "`nVS Code Python Bootstrap Script -- Yuri - 2021`n"

$project_name = "$args"

if ("" -eq $project_name) {
        $project_name = Read-Host "New project name"
}

$path = Join-Path (Resolve-Path ..) "$project_name"


if(Test-Path "$path") {
        Write-Output "`n$path already exists."
} else {
        Write-Output "`nCreating new project: $path"
        [System.IO.Directory]::CreateDirectory("$path") | Out-Null
}

if(Test-Path "$path\.vscode") {
        Write-Output ".vscode exists, not overwriting."
} else {
        Write-Output "Copying .vscode folder..."
        Copy-Item ".\.vscode" -Recurse -Destination "$path"
}

if(Test-Path "$path\main.py") {
        Write-Output "main.py exists, not overwriting."
} else {
        Write-Output "Copying main.py..."
        Copy-Item ".\main.py" -Destination "$path"
}

if(Test-Path "$path\.venv") {
        Write-Output ".venv exists, not creating a new virtual environment."
} else {
        Write-Output "Creating virtual environment..."
        python -m venv "$path\.venv"
}

if(Test-Path "$path\.git") {
        Write-Output ".git exists, not creating a new repository."
} else {
        Write-Output "Initializing git..."
        git init "$path"
}

if(Test-Path "$path\.gitignore") {
        Write-Output ".gitignore exists, not overwriting."
} else {
        Write-Output "Copying .gitignore..."
        Copy-Item ".\.gitignore" -Destination "$path"
}

Write-Output "Done.`n"

Write-Host -NoNewLine "Press any key to open new project in VS Code (ESC to exit)..."
$key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

if(!(27 -eq $key.VirtualKeyCode)) {
        code $path
}

Write-Host "`n"
