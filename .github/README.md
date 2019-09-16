First I'd like to say thanks to my beloved husband @foxburu for aligning the needed partitions
This is based on the work of @j-d-r (repo down below)

For booting, check the **bootcmd** variable in u-boot using `printenv`
Mine was: ` bootcmd=bootelf 0x9F040000`
IF yours has something like `bootcmd=bootm 0x9f040000`
**revert this commit** or change it: run this command in u-boot via serial 

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

Binaries will be available soon

------

Relevant commits:

- 71b866c46ad5e262a780facd0eb52834b43fa176
- 2237250c1ff6696366a91afeb6bba39fbb7b9925
- 3d7eb0f51753985ed60c35057a800854c9f5fd85
- 8a0126547fb71185ffe63150540caa623954346c
- a58facf2bed16db2986b40c1cf596cbb7ea7dd69
- dbf5230641cafc822cb70ab70c465dbac232c015
