cd dev
rm -rf dynamorio
rm -rf dynamorio_build

git clone "https://eu-gerrit-1.euhpc.arm.com/armie/dynamorio"

cd dynamorio
git checkout upstream-master
wget https://patch-diff.githubusercontent.com/raw/DynamoRIO/dynamorio/pull/5835.diff
git apply 5835.diff

cd ..
mkdir dynamorio_build
cd dynamorio_build

cmake -DDEBUG=ON -DBUILD_TESTS=ON -DSHOW_RESULTS=ON ../dynamorio
make -j

cd ..

#cd tests/private/avk

#./run_avk.py /home/phiram01/dev/dynamorio_build/bin64/drrun sve2_v0.0/build/sve/scapa-00rel0/tests --results results.json
