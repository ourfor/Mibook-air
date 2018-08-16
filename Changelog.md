## 更新日志

# 2018年7月31日
- DSDT打补丁，使之能够使用Voodooli2c驱动，使用elan触摸板驱动，替换之前的ApplePS2SmartTouchPad，此驱动会导致Windows重启到OS X下触摸板不可用
- CPUFriend数据重新生成
- 更新VoodooPS2Controller.kext，于之前键位有较大改变的是Windows徽键于Alt键位发生交换，之前ApplePS2SmartTouchPad设置的键位，由于VoodooPS2Controller仓库的安装说明里面涉及系统修改，可能导致系统不稳定，所以建议使用键位映射的软件：[karabiner](https://pqrs.org/osx/karabiner/)
- 删除intel 视频修复的驱动，采用最新的方案Lilu+WhateverGreen，将有利于安装10.14时核显的驱动
- 鼠标滚动不平滑流畅，可以使用软件[Mos](https://mos.caldis.me/)(此版有个小Bug，详见仓库主页的[issues](https://github.com/Caldis/Mos/issues/95))

#### 关于触摸板
- 采用此驱动，三指上划下滑更加流畅，但三指点按查询不可用，只能通过按压触摸板左边的实体键来实现鼠标右键的功能
- ApplePS2SmartTouchPad与VoodooPS2Controller不可同时使用，否则VoodooPS2Controller将不可用。

# 2018年8月7日
- 更新AppleALC驱动，注入id=27，添加ALCPlugFix，解决睡眠唤醒无声，以及无麦克风输入和噪音比较大的问题。(声卡已经完美)

#### 如何使用ALCPlugFix
- 在Other目录下的alc_fix目录,然后双击install双击自动安装.command,输入用户密码即可

# 2018年8月12日
- 之前使用的触摸板驱动不太好用，换回之前的版本，同时设置一些常用的手势
# 2018年8月16日

- 触控板的问题终于完成的比较好了，虽然仍然存在Windows下面重启到OS X下面无法使用的现象，但是这一版驱动特别适合码字

#### 相关说明
- 仍然采用ApplePS2SmartTouchPad，原因是此驱动功能异常强大，具有很强的自定义功能。
相关文档请google “ApplePS2SmartTouchPad”，作者有详细的说明

> 我做的主要改动
1. 三指上划  最小化当前应用
2. 三指下划  窗口预览
3. 三指左右滑动 前进 后退
4. 四指 上划 快速切换应用
5. 四指 下划 隐藏Dock
6. 四指左右滑动 全屏应用相互切换

键盘相关
1. 可以随时开启/禁用触控板 按住shift + Cap之后按下F8 之所以设置为F8 是因为F8上面这个图标较为特殊，容易记忆。码字的时候不用担心触控板误触了
2. 交换windows键和alt键，这样更接近白果
3. 启用Delete键的删除功能，即可以产生与command + Backspace的效果

如果你需要更加符合你习惯的触摸板和键盘操作逻辑，那么你就很有必要阅读作者的文档了
如何自定义，找到相关驱动，选中右键-显示包内容-编辑info.plist 更改相关的值就行了
这里我就暂时不张开讨论，最近一两个星期一直在练习盲打

[链接](https://osxlatitude.com/forums/topic/1948-elan-focaltech-and-synaptics-smart-touchpad-driver-mac-os-x/)
如何使用此驱动呢？
只需要下载好我编辑好的ApplePS2SmartTouchPad.kext以及没有打过hdi补丁的dsdt替换对应文件

注意:ApplePS2SmartTouchPad是一个强大的触控板键盘解决方案，任何额外的触控板驱动和键盘驱动都会影响到它的正常工作
请确保您已经删除了：
- VoodooPS2Controller
- VoodooI2C
- VoodooI2CELAN
- VoodooI2CHID
- VoodooI2CUPDDEngine


以及DSDT没有打过I2C的补丁   

由于git似乎没有检测到我的改动，故我将最新的efi保存到服务器：[下载链接](https://file.ourfor.top/tools/Mibook-air.zip)




