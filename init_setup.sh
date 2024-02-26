# To install Environment with all packages directly:
# 1. open gitbash in terminal
# 2. use command : bash init_setup.sh

echo [$(date)]:"START"


echo "Creating Environment and installing Packages"
# conda env create -p MLp1Env --file "requirements/environment.yml"
conda create -p MLp1Env python=3.12 -y


echo "Activating Environment"
source activate ./MLp1Env
pip install -r "requirements/requirements.txt"


echo "Create Folder Structure"
python "requirements\template.py"


echo "Installing Local Package"
pip install -e .


echo [$(date)]: "END"