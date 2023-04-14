#!/bin/bash
if [[ $1 ]]; then
  gamepath=$1
else
  read -p "where is your Space Engineers game folder?: " gamepath
  cd $gamepath/Bin64
fi
echo "Using, $PWD"
sleep 1
wget -qO- https://gist.github.com/opekope2/e02db7e526dadff0813a6ea2aebf820b/archive/a54ad222faf4483a3f63098bea8240bf19350697.zip | busybox unzip -j -
echo "Opekope's script downloaded"
sleep 1
wget https://github.com/sepluginloader/SpaceEngineersLauncher/releases/latest/download/SpaceEngineersLauncher.exe -O SpaceEngineersLauncher.exe
chmod +x SpaceEngineersLauncher.exe SpaceEngineersLauncher.py
echo "Add './SpaceEngineersLauncher.py %command%' to your game's launch options."
