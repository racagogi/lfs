set +h
umask 022
LFS="$HOME/LFS"
LC_ALL=C
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='λ '
