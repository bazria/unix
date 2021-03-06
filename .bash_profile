# fix to explicitly define locale for python
export LC_ALL="fr_FR.UTF-8"
export LANG="fr_FR.UTF-8"

# tbdbaz todelete line below to test if useful as redundant in resulting path
#export PATH=$PATH:/usr/local/bin
# current path = /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Library/PostgreSQL/9.6/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Library/PostgreSQL/9.6/bin

# gettxt
# export PATH="/usr/local/opt/gettext/bin:$PATH"
#
# openssl
# export PATH="/usr/local/opt/openssl/bin:$PATH"
#
# A CA file has been bootstrapped using certificates from the SystemRoots keychain.
# To add additional certificates (e.g. the certificates added in the System keychain),
# place .pem files in
#  /usr/local/etc/openssl/certs
#  and run /usr/local/opt/openssl/bin/c_rehash
# This formula is keg-only, which means it was not symlinked into /usr/local,
# because Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries.
# If you need to have this software first in your PATH run:
# echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.bash_profile
# For compilers to find this software you may need to set:
# LDFLAGS:  -L/usr/local/opt/openssl/lib
# CPPFLAGS: -I/usr/local/opt/openssl/include
# For pkg-config to find this software you may need to set:
# PKG_CONFIG_PATH: /usr/local/opt/openssl/lib/pkgconfig

# sqlite
# export PATH="/usr/local/opt/sqlite/bin:$PATH"
#
# This formula is keg-only, which means it was not symlinked into /usr/local,
# because macOS provides an older sqlite3.
# If you need to have this software first in your PATH run:
# echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.bash_profile
# For compilers to find this software you may need to set:
# LDFLAGS:  -L/usr/local/opt/sqlite/lib
# CPPFLAGS: -I/usr/local/opt/sqlite/include
# For pkg-config to find this software you may need to set:
# PKG_CONFIG_PATH: /usr/local/opt/sqlite/lib/pkgconfig

