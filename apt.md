# apt

## Get repo fingerprint from key
wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | gpg --with-fingerprint --with-colons -
