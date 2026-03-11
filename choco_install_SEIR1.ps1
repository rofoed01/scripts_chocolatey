New-Item -ItemType Directory -Force -Path "C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Terraform", "C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Notes" ,"C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Homework", "C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Classes",  "C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Books","C:\users\$env:username\Documents\TheoWAF\class7.5\GCP\Files", "C:\users\$env:username\Documents\TheoWAF\class8", 
"C:\users\$env:username\Documents\TheoWAF\Logs"

#logging for script output
Start-Transcript -Path "C:\users\$env:username\Documents\TheoWAF\Logs\chocoInstall$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log" 

#install chocolatey
Set-ExecutionPolicy -Scope Process -ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#choco installs
choco install -y googlechrome brave zoom sysinternals vim vscode chocolateygui chocolatey-core.extension choco-upgrade-all-at-startup notepadplusplus curl wget anki --params "/CreateDesktopIcon" git python3 terraform opentofu jq awscli azure-cli gcloudsdk --ignore-checksums openjdk obsidian 

#####################

# extras

# choco install -y 7zip bind-toolsonly vlc telegram wireguard ublockorigin-chrome 
# choco install -y terragrunt hashicorp-sentinel kubernetes-cli argocd-cli k0s k0sctl k9s kubectx kubens kubernetes-helm kubernetes-kompose argocd-cli make istioctl kustomize eksctl warp-terminal golang rust  docker-cli docker-desktop docker-compose openssl grafana prometheus burp-suite-free-edition trivy
# choco install -y anaconda3 discord datadog-agent k3d k6 minikube rancher-desktop ollama
# choco install -y notion nessus-agent
# choco install -y zap nmap wireshark 

echo "all set!"
Stop-Transcript