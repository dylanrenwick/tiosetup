#!/bin/bash

dnf install perl-CPAN -y
PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install Digest::CRC'
rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
dnf config-manager --add-repo http://download.mono-project.com/repo/centos/
dnf config-manager --add-repo http://download.opensuse.org/repositories/shells:fish:release:2/Fedora_24/shells:fish:release:2.repo
dnf update -y
dnf install allegro5-devel ant bison bison-devel clang clisp clojure cmake dash erlang fish flex flex-devel fsharp gcc-c++ gforth \
  glibc-devel.i686 golang groovy haskell-platform java-1.?.0-openjdk julia ksh libgcc.i686 mercurial mono-complete \
  nasm ncurses-compat-libs npm pcre-devel perl-CPAN pl python3-devel ruby zsh -y
npm install -g cheddar-lang coffee-script babel-cli
python3 -m pip install --upgrade pip
python3 -m pip install exrex python-pcre hbcht sympy
python3 -m pip install numpy 
gem install treetop
wget http://downloads.dlang.org/releases/2.x/2.073.0/dmd-2.073.0-0.fedora.x86_64.rpm
dnf install dmd-2.073.0-0.fedora.x86_64.rpm -y
rm -f dmd-2.073.0-0.fedora.x86_64.rpm
mkdir -p tmp
cd tmp
wget https://haskell.org/platform/download/8.0.2/haskell-platform-8.0.2-unknown-posix--full-x86_64.tar.gz
tar zxvf haskell-platform-8.0.2-unknown-posix--full-x86_64.tar.gz
rm -f haskell-platform-8.0.2-unknown-posix--full-x86_64.tar.gz
./install-haskell-platform.sh
cd ..
rm -rf tmp
