echo "  ____       _                       ___       _ _   "
echo " / ___|  ___| |_ _   _ _   _ _ __   |_ _|_ __ (_) |_ "
echo " \___ \ / _ \ __| | | | | | | '_ \   | || '_ \| | __|"
echo "  ___) |  __/ |_| |_| | |_| | |_) |  | || | | | | |_ "
echo " |____/ \___|\__|\__,_|\__,_| .__/  |___|_| |_|_|\__|"
echo "                            |_|                      "
sudo add-apt-repository multiverse
sudo add-apt-repository universe
sudo apt update -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y build-essential ubuntu-restricted-extras software-properties-common apt-transport-https wget curl libssl-dev nginx git geary code 

sudo snap install
