#!/bin/bash

autopath=$(find ~ -type d | grep 'SpaceEngineers/Bin64' |awk 'NR==1{print $1}')
gamepath=${autopath%%/Bin64*}/Bin64


if [[ $1 ]]; then
  gamepath=$1
else
  read -p "Is $gamepath your Space Engineers Bin64 folder?"
fi

cd $gamepath
echo "Using, $PWD"
wget https://gist.githubusercontent.com/opekope2/e02db7e526dadff0813a6ea2aebf820b/raw/SpaceEngineersLauncher.py -O SpaceEngineersLauncher.py
echo "Opekope's script downloaded!"
wget https://github.com/sepluginloader/SpaceEngineersLauncher/releases/latest/download/SpaceEngineersLauncher.exe -O SpaceEngineersLauncher.exe
echo "Avaness' SpaceEngineersLauncher downloaded!"
echo "Setting execute permissions for downloaded files..."
chmod ug+rx SpaceEngineersLauncher.exe SpaceEngineersLauncher.py
echo "Permissions set!"
echo ""
echo "DONT FORGET!! Add './SpaceEngineersLauncher.py %command%' to your game's launch options."
sleep 2
