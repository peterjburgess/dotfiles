echo "Creating virtual environment in .venv directory"

py -m venv .venv

echo "Activating virtual environment"

&.venv\Scripts\Activate.ps1

echo "Updating pip"

python -m pip install -U pip

echo "Checking if this is a work environment and so should use DevOps artifacts feed"

$currentDir = Get-Location

if ($env:COMPUTERNAME -like "*Work*" -or $(Get-Location).Path -like "*Work*"){
    echo "Work location found"

    echo "Installing keyring and artifacts-keyring"

    python -m pip install keyring artifacts-keyring

    echo "Creating pip.ini file in virtual environment to point to artifacts feed"

    $iniText = "
    [global]
    index-url=https://pkgs.dev.azure.com/AlbertaInnovatesCPR/Reporting/_packaging/AIReporting/pypi/simple/
    "

    New-Item .venv\pip.ini -Value $iniText
}
else{
    "Not a work location"
}

echo "Checking for existence of requirements.txt file..."

if (Test-Path requirements.txt) {
    echo "requirements.txt found. Installing..."
    python -m pip install -r requirements.txt
}
else {
    echo "No requirements.txt found"
}
