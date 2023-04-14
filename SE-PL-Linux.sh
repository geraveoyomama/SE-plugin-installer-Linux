#!/bin/bash
if [[ $1 ]]; then
  gamepath=$1
else
  read -p "where is your Space Engineers game folder?: " gamepath
fi
cd $gamepath/Bin64
echo "Using, $PWD"
wget https://gist.githubusercontent.com/opekope2/e02db7e526dadff0813a6ea2aebf820b/raw/SpaceEngineersLauncher.py -O SpaceEngineersLauncher.py
echo "Opekope's script downloaded!"
wget https://github.com/sepluginloader/SpaceEngineersLauncher/releases/latest/download/SpaceEngineersLauncher.exe -O SpaceEngineersLauncher.exe
echo "Avaness' SpaceEngineersLauncher downloaded!"
echo "Setting execute permissions for downloaded files..."
chmod +x SpaceEngineersLauncher.exe SpaceEngineersLauncher.py
echo "Permissions set!"
echo ""
echo "DONT FORGET!! Add './SpaceEngineersLauncher.py %command%' to your game's launch options."
sleep 2
