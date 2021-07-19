# 调试

## 1.continue（继续）

执行`至`下一个断点

## 2.step over（单步跳过）

从断点处开始，执行单步语句，不进入函数内部。

## 3.step in（单步调试）

进入函数内部

## 4.step out（单步跳出）

与`step in`相反的操作，跳出函数内部

- 快捷键：

一键注释并取消：command  / 

# 搞一个界面

## 启动问题

- 如果点不开可能启动界面

![image-20210719193849511](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719193849511.png)

没有钩上，可以在左上角window启动

## 新建

- 新建：OS----- command line tool（命令行）

命名那里，organization identifier：一般倒着写写公司网站域名

![image-20210719194919799](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719194919799.png)

保存地址那里，下面的 别勾

![image-20210719195034007](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719195034007.png)

生成的可执行文件在源代码导航区的products（finder）

![image-20210719202601689](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719202601689.png)

## 外部打开

想在Xcode打开一个project：

![image-20210719202940649](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719202940649.png)

## 添加target

project下面的文件夹是target，一个程序

![image-20210719210245433](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719210245433.png)

添加target，上图

切换：编译执行哪个- target![image-20210719210943279](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719210943279.png)

# 