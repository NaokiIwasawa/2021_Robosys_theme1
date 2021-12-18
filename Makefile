# SPDX-License-Identifier: GPL-3.0
# *Copyright (c) 2021 Ryuichi Ueda and Naoki Iwasawa. All rights reserved.

bj-m := myled.o

myled.ko: myled.c
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 modules

clean:
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 clean
