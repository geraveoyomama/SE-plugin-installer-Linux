#!/bin/bash
if [[ $1 ]]; then
  gamepath=$1
else
  read -p "where is your Space Engineers game folder?: " gamepath
  cd $gamepath/Bin64
fi
echo "Using, $PWD"
sleep 1
wget https://gist.githubusercontent.com/opekope2/e02db7e526dadff0813a6ea2aebf820b/raw/SpaceEngineersLauncher.py -O SpaceEngineersLauncher.py
echo "Opekope's script downloaded"
sleep 1
wget https://github.com/sepluginloader/SpaceEngineersLauncher/releases/latest/download/SpaceEngineersLauncher.exe -O SpaceEngineersLauncher.exe
chmod +x SpaceEngineersLauncher.exe SpaceEngineersLauncher.py
echo "Add './SpaceEngineersLauncher.py %command%' to your game's launch options."
