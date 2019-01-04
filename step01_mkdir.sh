#! /usr/bin/bash

echo ""
echo "#########"
echo "# SETUP #"
echo "#########"

source env.sh


# make quda directory, lqcd directory, subdirectories.
[[ -d quda/build ]] || mkdir -p quda/build
[[ -d lqcd/download ]] || mkdir -p lqcd/download
[[ -d lqcd/src ]] || mkdir -p lqcd/src
[[ -d lqcd/build ]] || mkdir -p lqcd/build
[[ -d lqcd/install ]] || mkdir -p lqcd/install

# Download qinstall, copy in sierra-quda profile

if [[ -d qinstall ]];then
	cd qinstall
	git pull
	cd ..
else
	git clone https://github.com/usqcd-software/qinstall
fi

sed 's\:BASEDIR:\'${BASEDIR}'\g' "summit-quda.prf" > "qinstall/summit-quda.prf"


