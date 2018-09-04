# 记录一下常见的问题
- Q:HDMI以后，不能使用双屏，只能用外接屏幕。

- [x] A: 这是由于你强制打开了内屏的hidpi导致的，不同的屏幕的` DisplayVendorID ` 和 ` DisplayProductID `不一样，外屏开hidpi，同样按照[这个](https://blog.ourfor.top/2018/01/01/%E5%BC%80%E5%90%AFhidpi/)方法制作描述文件
