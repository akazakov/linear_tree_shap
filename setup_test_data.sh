set -eux
#rm -rf dataset

mkdir -p dataset/adult
pushd dataset/adult
curl -O https://archive.ics.uci.edu/static/public/2/adult.zip
unzip adult.zip
popd

mkdir -p dataset/conductor
pushd dataset/conductor
curl -O "https://archive.ics.uci.edu/static/public/464/superconductivty+data.zip"
unzip "superconductivty+data.zip"
popd

python -m venv .venv
source .venv/bin/activate
. .venv/bin/activate
python setup.py install
pip install fasttreeshap
