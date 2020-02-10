<p align=center>
<img src="doc/images/mibook-air.jpg">
</p>

<p align=center>
 <a href="https://github.com/ourfor/Mibook-air/issues"><img src="https://img.shields.io/github/issues/ourfor/Mibook-air.svg"></a> 
 <a href="https://github.com/ourfor/Mibook-air/network"><img src="https://img.shields.io/github/forks/ourfor/Mibook-air.svg"></a>
 <a href="https://github.com/ourfor/Mibook-air/stargazers"><img src="https://img.shields.io/github/stars/ourfor/Mibook-air.svg"></a>
 <a href="https://github.com/ourfor/Mibook-air"><img src="https://img.shields.io/github/license/ourfor/Mibook-air.svg"></a>
 <a href="https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2Fourfor%2FMibook-air"><img src="https://img.shields.io/twitter/url/https/github.com/ourfor/Mibook-air.svg?style=social"></a>

</p>

--- 


# 配置文件
> 这个仓库用来更新小米笔记本Air i7 7500U(指纹版) 引导配置文件
# 小米笔记本Air-i7-7500U 详细配置:

|CPU|GPU|内存|SSD|无线网卡|声卡|分辨率|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Intel i7 7500U|Intel HD 620 Nvdia MX150|8G(不可拓展)|Samsung Nvme 256G (预留M.2 Sata接口)|Intel Wireless AC 8265(板载 ) |Realtek alc 255|1920x1080|

更多信息见[小米官网](https://www.mi.com)
<!--more-->

> 我笔记本BIOS的版本是` 0705 `，如果你使用这个EFI后遇到笔记本无法休眠，即无故睡死，可以通过dsdt打补丁，也可以刷和我版本相同的BIOS,相关<a href=http://bbs.xiaomi.cn/t-13643021><i><b><u>教程</i></b></u></a>
--- 
# Screenshot
<table>
 <tr>
 <td><img src="doc/images/bootoption_one.png"></td>
 <td><img src="doc/images/macOS.png"></td>
 </tr>
 <tr>
 <td><img src="doc/images/bootoption_two.png"></td>
 <td><img src="doc/images/Win10.png"></td>
 </tr>

 </table>


# 关于

> Clover最后一版更新，开始使用OpenCore引导

正在适配OpenCore, OpenCore功能更加强大，更加接近白苹果，配置也更加简洁，当然难度也不小。

---

~~由于最近安装` 10.14 `无法驱动核显，表现为：注入*id=59160000*可以正常识别核显型号，但是相关驱动并未加载，且显存只有` 7M `
可以这样说目前这个` EFI `只会适配10.13的系统，止步于10.14，~~  原因很简单：作为一个学生抑或是一名工作者没有太多的时间于精力放在这种无光紧要的问题上，比较每次系统更新带来的好处并不是那么的明显，相反我们更应该追求不断完善使用体验，` macOS `很稳定，Bug很少，小版本确实没有升级的必要。那么是否意味着这个` Repo `就放弃维护了呢？答案是否定的，显然虽然不再为更新系统而折腾，但是为了` 完善使用体验 `还是要不断更新维护的，主要修改的部分：
- 同步最新的Clover
- 修改SSDT和DSDT以更好解决问题
- 功耗优化、驱动精简以及同步更新最新驱动等
- 完善相关硬件的驱动或者缺陷

![about System](doc/images/system.png)

目前已知问题：
- 蓝牙鼠标无法正常使用，其它蓝牙设备可以正常使用
- WiFi目前无解，国外大佬的IntelWifi项目进展迅速，目前已经能够在` 系统偏好设置-网络-Wi-Fi中扫描到WIFI信号了 ` 相关项目地址：[IntelWifi](https://github.com/rpeshkov/IntelWifi)和[black80211](https://github.com/rpeshkov/black80211)

## Changelog

详见[Changelog](./Changelog.md)

其他问题可以看看本项目的[Wiki](https://github.com/ourfor/Mibook-air/wiki)

# 捐赠
仓库维护不易，如果这个EFI确实有帮到过您，又或者您有捐赠的意图，欢迎通过下面👇的二维码进行捐赠，注意填写备注。

<p>
    <table>
    <tr>
        <td><img src="doc/images/pay_alipay.png" alt="支付宝支付二维码" /></td>
        <td><img src="doc/images/pay_wechat.png" alt="微信支付二维吗" /></td>
    </tr>
    </table>
</p>

## 如何使用这个EFI
在[Release](https://github.com/ourfor/mibook-air/releases)下载EFI的打包文件，或者使用` git clone <Repository Address> `clone仓库里面的文件。
然而并不是` EFI `里面的文件全部放进*ESP分区*，为了保证你的Windows能够被引导启动，请删除我的EFI文件夹里面的` Microsoft `和` Boot `这两个文件夹，之后才是将下载的EFI文件夹与系统的EFI文件夹合并。

### 必要的说明：
1. nvram.plist放在` ESP `分区用于保存亮度等，这样每次开机就不会出现亮度飙到最大值。
2. EFI文件夹下面的诸如` Windows `、` ubuntu `等文件保存的是这些系统的引导信息，也就是说，再合并EFI分区时请删除这些文件，毕竟磁盘信息不一样，不通用。
3. 我笔记本BIOS的版本是` 0705 `，如果你使用这个EFI后遇到笔记本无法休眠，即无故睡死，可以通过dsdt打补丁，也可以刷和我版本相同的BIOS,相关[教程](http://bbs.xiaomi.cn/t-13643021) .

## 挂载ESP分区并合并EFI  
### Windows下  
组合键` win `+` R(run) `,输入` diskpart `点击运行，输入以下命令挂载：  
```bash  
list disk   //列出存储设备信息
select disk 0    //选择磁盘0（选择ESP分区所在磁盘，一块硬盘默认为0）
list partition   //列出所选硬盘的所有分区
select partition 0   //根据ESP分区选择
assign letter=x     //分配盘符  
```
接下来你就可以在Windows的资源管理器里面看到` x `盘，就是我们系统的ESP引导分区，但是在Windows资源管理器中会提示没有权限打开，这时候使用软件` Explorer++ `以管理员身份运行，下载[Releases](https://github.com/ourfor/mibook-air/releases)，删除EFI文件夹下面的` Windows `和` Ubuntu `这两个文件夹，之后再移动到ESP分区，如果有提示选择合并。

[Explorer++](https://explorerplusplus.com/software/explorer++_1.3.5_x64.zip) 

[Bootice](http://www.ipauly.com/wp-content/uploads/2015/11/BOOTICEx64_v1.332.rar)


以管理员身份运行Bootice，` UEFI-修改启动序列-添加 `添加四叶草开机引导路径(` X:\EFI\CLOVER\CLOVERX64.efi `) ,上移到第一启动序列.下次开机就能进入四叶草引导了。  

### macOS下  
```bash
diskutil list
diskutil mount disksxsx  //diskxsx就是你EFI类型分区的IDENTIFIER
```

### 如何扩大ESP分区:
> 安装macOS时抹除分区是要求待抹除分区所在磁盘的分区大小大于200m，这只是安装macOS时需要这样，而引导macOS启动时则没有这种要求，所以你可以新建一个ESP引导分区，备份原来ESP分区到镜像文件，再从镜像文件恢复到新建的ESP分区，之后删除原来的ESP分区就行了，安装结束以后你可以按照上述方法恢复原来的ESP分区。  

` 用到的工具： ` 

- 磁盘管理(在Windows资源管理器中右键` 此电脑 `打开` 管理 `右键系统分区` 压缩卷 `)         
- [DiskGenius](http://download.eassos.cn/DG495508_x64.zip)  

在DiskGenius中右键压缩出来的分区，新建分区，选择` 主分区 `，分区类型选择` EFI System Partition `合并EFI文件后，使用` Bootice `添加启动项。 

## 注意 
- 最好使用微软账户绑定Windows的数字激活证书（只需在设置中换成微软账户登陆就行），这样做的目的是为了方便某些人重装。当然安装黑果不需要重装，也不会影响Windows。
- 安装黑果前请确保在你即将安装黑果系统的这块硬盘中的ESP分区大于200m。
- 由于不同版本系统的兼容问题，如果不能正常安装可以删除部分驱动
> EFI/CLOVER/kexts/Other/CoreDisplayFixup.kext

## Hackintosh安装
(详见博主[博客](https://blog.ourfor.top))    
[Releases](https://github.com/ourfor/mibook-air/releases) 

## 常见问题
[Q&A](Q&A.md)
