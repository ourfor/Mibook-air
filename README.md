<img src="http://ozkg680jm.bkt.clouddn.com/mibook.jpg" width=70% height=30%>

# Clover配置文件
## 这个仓库用来更新小米笔记本Air i7 7500U(指纹版)clover的配置文件
# 小米笔记本Air-i7-7500U 详细配置:

|CPU|GPU|内存|SSD|无线网卡|声卡|分辨率|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Intel i7 7500U|Intel HD 620 Nvdia MX150|8G(不可拓展)|Samsung Nvme 256G (预留M.2 Sata接口)|Intel Wireless AC 8265(板载 ) |Realtek alc 255|1920x1080|

更多信息见[小米官网](https://mi.com)
<!--more-->
## Hackintosh安装
(详见博主[博客](https://ourfor.top))    
[Releases](https://github.com/ourfor/mibook-air/releases)  
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
接下来你就可以在Windows的资源管理器里面看到` x `盘，就是我们系统的ESP引导分区，但是在Windows资源管理器中会提示没有权限打开，这时候使用软件` Explorer++ `以管理员身份运行，下载[Releases](https://github.com/ourfor/mibook-air/releases)，移动到ESP分区。  

[Explorer++](https://explorerplusplus.com/software/explorer++_1.3.5_x64.zip)    
<img src="http://ozkg680jm.bkt.clouddn.com/Explorer++.PNG" width=70% height=30%>  
[Bootice](http://www.ipauly.com/wp-content/uploads/2015/11/BOOTICEx64_v1.332.rar)     
<img src="http://ozkg680jm.bkt.clouddn.com/Bootice.PNG" width=70% height=30%>  
以管理员身份运行Bootice，` UEFI-修改启动序列-添加 `添加四叶草开机引导路径(` X:\EFI\CLOVER\CLOVERX64.efi `) ,上移到第一启动序列.提示选择合并，下次开机就能进入四叶草引导了。  
### macOS下  
```bash
diskutil list
diskutil mount disksxsx
```

