set -exu

apk add virtualbox-guest-modules-grsec
apk add virtualbox-additions-grsec

echo vboxpci >> /etc/modules
echo vboxdrv >> /etc/modules
echo vboxsf >> /etc/modules
echo vboxnetflt >> /etc/modules

rm -rf /var/cache/apk/*