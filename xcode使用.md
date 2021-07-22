

![image-20210719195034007](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719195034007.png)

# 调试

1、开始调试：点击行号

取消调试：把断点行号拖出来一丢就可以了

2、高亮语句， 即将执行

3、随时查看（或修改）变量的值：调试时：把鼠标移到变量上面

## 1.continue（继续）

执行`至`下一个断点

## 2.step over（单步跳过）

越过子函数，但子函数会执行

## 3.step into（单步调试）

进入子函数

## 4.step out（单步跳出）

当单步执行到子函数内时，用step out就可以执行完子函数余下部分

# 搞一个界面

## 启动问题

- 如果点不开可能启动界面

![image-20210719193849511](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719193849511.png)

没有钩上，可以在左上角window启动

## 新建

1、新建：OS----- command line tool（命令行）

2、命名那里，organization identifier：一般倒着写写公司网站域名

![image-20210719194919799](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719194919799.png)

3、保存地址那里，下面的 别勾3、生成的可执行文件在源代码导航区的products（finder）

## 快捷键

![image-20210719202601689](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719202601689.png)

- command 左右括号：将选住的语句左右移动
- 代码排版：control i
- 一键注释并取消：command  / 
- 查找替代：command F，切换find or repleace

## 外部打开

想在Xcode打开一个project：

![image-20210719202940649](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719202940649.png)

## 添加target

1、project下面的文件夹是target，一个程序

![image-20210719210245433](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719210245433.png)

2、添加target，上图

3、切换：编译执行哪个- target![image-20210719210943279](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719210943279.png)

# 重命名（要改三个地方）

改名字容易出现不明原因

**最好复制粘贴到新的target里面**

![image-20210720165952517](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720165952517.png)

1、回车改名字（改两个，一样的名字） 

![image-20210720170129402](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170129402.png)

![image-20210720170154707](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170154707.png)

![image-20210720170231487](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170231487.png)

2、改名字（共改3个名字）

# 删除target

![image-20210720170402938](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170402938.png)

![image-20210720170511671](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170511671.png)

![image-20210720170611656](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170611656.png)

1、删掉

![image-20210720170129402](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170129402.png)

![image-20210720170154707](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170154707.png)

![image-20210720170725670](xcode%E4%BD%BF%E7%94%A8.assets/image-20210720170725670.png)

2、删掉（共删3次）

# 