set -ux

cat << EOF > /etc/apk/repositories
http://dl-2.alpinelinux.org/alpine/v3.5/main
http://dl-2.alpinelinux.org/alpine/v3.5/community
http://dl-2.alpinelinux.org/alpine/edge/main
http://dl-2.alpinelinux.org/alpine/edge/community
http://dl-2.alpinelinux.org/alpine/edge/testing
EOF

apk update
apk upgrade -U --available
apk add bash
apk add sudo

source /etc/os-release

cat << EOF > /etc/motd

Alpine Development Environment

EOF
