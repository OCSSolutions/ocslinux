# OCS Linux Root

The contents of this folder will be installed to /ocslinux on an OCS Linux installation and will be kept current. This is done so that there is no need to modify base Debian packages.

Scripts are invoked via:

`DPkg::Post-Invoke {"/bin/bash /ocslinux/bin/ocslinux-hook"; };`

in

`/etc/apt/apt.conf.d/99-ocslinux-hook`


