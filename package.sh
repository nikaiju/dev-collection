rootdir=$(pwd)
echo $rootdir

cd src
array=(*/)

for dir in "${array[@]}";
do
    echo "Packaging $dir";
    cd $rootdir/src/$dir;
    tar -cvzf $rootdir/features/devcontainer-feature-${dir::-1}.tgz ./;
done
