# Only need to change these two variables
PKG_NAME=pygsa-dev
USER=aleksandra-kim

mkdir ~/conda-bld
conda config --set anaconda_upload no
export CONDA_BLD_PATH=~/conda-bld
export VERSION=`date +%Y.%m.%d`
conda build . --old-build-string
ls $CONDA_BLD_PATH/noarch/
anaconda -t $first-dev-upload upload -u $USER -l nightly $CONDA_BLD_PATH/noarch/$PKG_NAME-$VERSION-py_0.tar.bz2 --force
