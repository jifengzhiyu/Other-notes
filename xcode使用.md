**必须更新**

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

## Exception Breakpoint

定位出现错误的地方

![image-20210925232836299](xcode%E4%BD%BF%E7%94%A8.assets/image-20210925232836299.png)

# 搞一个界面

## 启动问题

- 如果点不开可能启动界面

![image-20210719193849511](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719193849511.png)

没有钩上，可以在左上角window启动

## 新建

1、新建：OS----- command line tool（命令行）

2、命名那里，organization identifier：一般倒着写写公司网站域名

![image-20210719194919799](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719194919799.png)

3、保存地址那里，下面的 别勾

4、生成的可执行文件在源代码导航区的products（finder）

## 快捷键

![image-20210719202601689](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719202601689.png)

- 中断command r或b：command .

- ![image-20210904112749300](xcode%E4%BD%BF%E7%94%A8.assets/image-20210904112749300.png)

- 复制view：command D
- **清除缓存：shift command K**

- command 左右括号：将选住的语句左右移动
- 代码排版：control i
- 一键注释并取消：command  / 
- 查找替代：command F，切换find or repleace
- 文档注释：option command /
- 移动光标上下左右: control  P/N/B/F

光标移动到行首：command A

- 删除字符至行尾：control k

删除单行文字 control AKK

- 切换功能面板：

导航栏：command 0

监视器：cmd option 0

除错区： command shift y

- 选择自选方框下的文字：按下option键，待光标变成十字线后去选择，然后conmand＋C，command＋V 
- 范围编辑（Edit All in Scope，默认快捷键Ctrl+Command+E）。
- 旋转屏幕 command 右

- option command [ 或 ]  交换顺序 

- 导航栏：

![image-20210724110622946](xcode%E4%BD%BF%E7%94%A8.assets/image-20210724110622946.png)

- 监视器：

  ![image-20210724110734834](xcode%E4%BD%BF%E7%94%A8.assets/image-20210724110734834.png)

-  搜索文件：commad shift o

- 整行（或选中的）向上向下移动 command option [ 或 ] 

- 写代码手动调出提示选单 esc

- 清除背景占用的系统资源：command shift k

- 全局折叠（折叠当前文件下的全部函数）

  ```rust
  Shift+Command+Option+Left/Right
  ```

## 外部打开

想在Xcode打开一个project：

![image-20210719202940649](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719202940649.png)

## 添加target

1、project下面的文件夹是target，一个程序

![image-20210719210245433](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719210245433.png)

2、添加target，上图

3、切换：编译执行哪个- target![image-20210719210943279](xcode%E4%BD%BF%E7%94%A8.assets/image-20210719210943279.png)

# 复制文件

把finder里面的文件直接拖拽到新的项目文件夹里（Xcode）

![image-20210730114450168](xcode%E4%BD%BF%E7%94%A8.assets/image-20210730114450168.png)

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

# 查看“字典”

选中函数，打开jump to definition

# 访问类

一个target中的类无法直接在另外一个target里面访问

如果想要这么做的话，在finder里面把想要的文件拖到源代码导航区

![image-20210804111833998](xcode%E4%BD%BF%E7%94%A8.assets/image-20210804111833998.png)

# 找Xcode文档

选中关键词

![image-20210805213451248](xcode%E4%BD%BF%E7%94%A8.assets/image-20210805213451248.png)

或者

![image-20210805213807769](xcode%E4%BD%BF%E7%94%A8.assets/image-20210805213807769.png)

选中关键词，在属性检察区问号里面找，可以open in developer documentaion

或者

option点关键字

# 在创建的时候指定父类

![image-20210806113635266](xcode%E4%BD%BF%E7%94%A8.assets/image-20210806113635266.png)

# 模拟器

- Option 多点触摸

![image-20211006111314533](xcode%E4%BD%BF%E7%94%A8.assets/image-20211006111314533.png)

- 截图command s
