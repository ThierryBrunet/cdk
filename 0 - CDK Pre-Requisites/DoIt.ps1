<# Pre-Requisites
--------------
- npm
- pip
- aws cli

#>

#------------------------------
#region Step 1 -- Pre-Requisite

#region -- Choco installs
# --------------------------------------
https://docs.chocolatey.org/en-us/choco/commands/

# Install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Upgrade choco
choco upgrade chocolatey

# List installed choco packages
choco list --local-only

# Un-install packages
foreach ($x in get-clipboard) { choco uninstall $x -y }

# Install packages
foreach ($x in get-clipboard) { choco install $x -y }
nodejs
winscp
7zip

# verify
choco list --local-only

# Upgrade
# -------
choco upgrade all -y

#endregion

#region -- Windows Store - WinGet (python/pip)
#-------------------------------
winget install python --force
python --version # Python 3.9.13
winget upgrade python --force

pip install --upgrade pip
pip --version # pip 22.1.2
#endregion

#region -- NPM latest
#--------------------
npm --version
npm install --location=global npm@latest # This command will install the latest version of NPM globally.
#endregion


#region -- Install was-cdk
#-------------------------
npm install --location=global aws-cdk
cdk version # 2.27.0 (build 8e89048)
cdk --help
#endregion

#endregion Step 1