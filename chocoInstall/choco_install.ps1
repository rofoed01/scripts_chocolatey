New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Terraform
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Notes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Homework
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Classes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Books
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Files
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Terraform
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Notes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Homework
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Classes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Books
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Files

Start-Transcript -Path "C:\users\$env:username\Documents\TheoWAF\Logs\chocoInstall$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log"
Start-Transcript -Path "Logs\chocoInstall$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log" 
Set-ExecutionPolicy -Scope Process -ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y googlechrome brave 7zip zoom sysinternals vim vscode bind-toolsonly vlc chocolateygui chocolatey-core.extension choco-upgrade-all-at-startup notepadplusplus telegram wireguard ublockorigin-chrome curl wget anki --params "/CreateDesktopIcon" git python3 terraform terragrunt hashicorp-sentinel opentofu kubernetes-cli argocd-cli k0s k0sctl k9s kubectx kubens kubernetes-helm kubernetes-kompose argocd-cli make jq istioctl kustomize eksctl warp-terminal golang rust  docker-cli docker-desktop docker-compose awscli azure-cli gcloudsdk --ignore-checksums openssl openjdk grafana prometheus burp-suite-free-edition trivy obsidian 

# choco install -y anaconda3 discord datadog-agent k3d k6 minikube rancher-desktop ollama
# choco install -y notion nessus-agent
# choco install -y zap nmap wireshark 

echo "all set!"
Stop-Transcript