First I'd like to say thanks to my beloved husband [@FoxBuru](https://github.com/FoxBuru) for aligning the needed partitions
This is based on the work of [@j-d-r](https://github.com/j-d-r) (repo down below)

For booting, check the **bootcmd** variable in u-boot using `printenv`

Mine was: ` bootcmd=bootelf 0x9F040000`

IF yours has something like `bootcmd=bootm 0x9f040000`

[**revert this commit**](https://github.com/bitrvmpd/openwrt/commit/dbf5230641cafc822cb70ab70c465dbac232c015) or change the value of **bootcmd**: run this command in u-boot via serial 

```
setenv bootcmd bootelf 0x9f040000
saveenv
```

For more info on how to update u-boot read this: https://github.com/j-d-r/openwrt#installation

For connecting via serial try these values:
- Baudrate: 115200 or 111607 (it should show up at boot in the UART field)
- Data bits: 8
- Stop bits: 1
- Parity: None
- Flow Control: None

> Downloads: https://sourceforge.net/projects/openwrt-eap245-v1/files/

------

Relevant commits:

- https://github.com/bitrvmpd/openwrt/commit/71b866c46ad5e262a780facd0eb52834b43fa176
- https://github.com/bitrvmpd/openwrt/commit/2237250c1ff6696366a91afeb6bba39fbb7b9925
- https://github.com/bitrvmpd/openwrt/commit/3d7eb0f51753985ed60c35057a800854c9f5fd85
- https://github.com/bitrvmpd/openwrt/commit/8a0126547fb71185ffe63150540caa623954346c
- https://github.com/bitrvmpd/openwrt/commit/a58facf2bed16db2986b40c1cf596cbb7ea7dd69
- https://github.com/bitrvmpd/openwrt/commit/dbf5230641cafc822cb70ab70c465dbac232c015
