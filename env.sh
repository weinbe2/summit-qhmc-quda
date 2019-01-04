#!/usr/bin/bash

# Subshell will source it again because this variable is not exported.
[[ -z ${SOURCE_ONCE_ENV_SH+X} ]] || return
SOURCE_ONCE_ENV_SH=1

set -eu -o pipefail

# USER INPUT: specify the git repo directory and the install directory
BASEDIR="/gpfs/alpine/lgt104/scratch/weinbe2/bin"

# Various directories of note
QIODIR=${BASEDIR}/lqcd/install/qio/
QMPDIR=${BASEDIR}/lqcd/install/qmp/
QUDADIR=${BASEDIR}/quda/build/

module load gcc/6.4.0
module load cuda/9.2.148
module load cmake/3.11.3
module load autoconf/2.69
module load automake/1.16.1

