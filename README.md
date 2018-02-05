# Clover
这个仓库用来更新小米笔记本Air i7 7500U(指纹版)
# 小米笔记本Air i7 7500U 配置

    `CPU：`              `GPU：`             `内存：`          `SSD：`                 `无线网卡：`         `声卡：`                `分辨率：`
                        Intel i7 7500U     Intel HD 620      8G             Samsung Nvme 256G     Intel Wireless    Realtek Alc 255       1920x1080
                       Nvdia MX150       (不可拓展)       (预留M.2 Sata接口)     AC 8265(板载 )

## Hackintosh
<!--more-->
### 2017年12月25日更新：

- 更新仿冒声卡驱动Applealc，配合lilu使用。id注入99，如果耳机只有一边有声，可以在系统-声音-平衡中调至最左或者最右
- 个性化四叶草启动项，详见作者[博客](ourfor.top)：`ourfor.top`
- DSDT打补丁，解决亮度调节，可以外接键盘或者鼠标后在系统设置-快捷键里面设置快捷键
- 更新驱动，修复10.13.3亮度百分比不刷新
