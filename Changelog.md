## 更新日志

# 2018年7月31日
- DSDT打补丁，使之能够使用Voodooli2c驱动，使用elan触摸板驱动，替换之前的ApplePS2SmartTouchPad，此驱动会导致Windows重启到OS X下触摸板不可用
- CPUFriend数据重新生成
- 更新VoodooPS2Controller.kext，于之前键位有较大改变的是Windows徽键于Alt键位发生交换，之前ApplePS2SmartTouchPad设置的键位，由于VoodooPS2Controller仓库的安装说明里面涉及系统修改，可能导致系统不稳定，所以建议使用键位映射的软件：[karabiner](https://pqrs.org/osx/karabiner/)
- 删除intel 视频修复的驱动，采用最新的方案Lilu+WhateverGreen，将有利于安装10.14时核显的驱动
- 鼠标滚动不平滑流畅，可以使用软件[Mos](https://mos.caldis.me/)(此版有个小Bug，详见仓库主页的[issues](https://github.com/Caldis/Mos/issues/95))
