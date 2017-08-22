#!/bin/bash
echo "start"

# miniconda
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
chmod +x Miniconda2-latest-Linux-x86_64.sh
bash ~/Miniconda2-latest-Linux-x86_64.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
rm Miniconda2-latest-Linux-x86_64.sh

conda create -y -n opensim-rl -c kidzik opensim git python=2.7
source activate opensim-rl

conda install --yes -c conda-forge lapack git
pip install git+https://github.com/stanfordnmbl/osim-rl.git

conda install --yes libgcc

conda install -y keras -c conda-forge
pip install git+https://github.com/matthiasplappert/keras-rl.git
git clone http://github.com/stanfordnmbl/osim-rl.git


echo "fertig"