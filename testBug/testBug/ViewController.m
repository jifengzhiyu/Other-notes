//
//  ViewController.m
//  testBug
//
//  Created by 翟佳阳 on 2021/11/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     添加全局断点
     Swift Error Breakpoint ：swift项目中使用的全局断点，当添加此断点后，程序会暂停在使用throw抛出异常的代码处。

     Exception Breakpoint：用来捕获程序中的异常，当程序发生数组越界，设置了非空参数为nil等问题会停留在异常处。

     OpenGL ES Error Breakpoint ：当OpenGL ES发生错误时，程序会停留在错误处。

     Symbolic Breakpoint ：符号断点，这是最强大的一种全局断点，系统的方法也可以断住，之前我们在探索alloc流程的时候就学习了

     5.Runtime Issue Breakpoint:运行时问题断点：当运用运行时方法出现错误时、程序会暂停在出错处。

     6.constraint Error Breakpoint ：是约束错误断点，自动布局控件出现约束错误时，添加这个断点后，程序会暂停在出错处，打印错误信息。

     7. Test Failure Breakpoint 是测试错误断点，当出现测试没有通过情况时，添加此断点会，停在失败的测试处。
     */
    
    /*
     2.3 Sound
     通过sound可以为断点处设置一个音效，当触发断点处，Xcode会播发音效。
     */
    for (int i = 0; i < 10; i++) {
        NSLog(@"%d",i);
    }
    
    
    /*
     2.2 Debugger Command
     Debugger Command 可以设置调试命令，当断点触发时，执行调试命令并输出结果到控制台。
     */
    
    for (int i = 0; i < 10; i++) {
        NSLog(@"%d",i);
    }
    for (int i = 0; i < 10; i++) {
        NSLog(@"%d",i);
    }
    
    /*
     2.1 Log Message
     我们可以选择输出的方式，选择Speak messsage则会播报断点的上图的断点中的内容，选择Log  message to console的话则会打印断点的输出信息到控制台。
     关于断点输出的设置，可以编写人日字符串，有些特殊含义的格式化符号
      
     %H：输出断点触发的次数

     %B：输出断点的名字

     @@：在2个@符号中间可以输入表达式
     */

    for (int i = 0; i < 10; i++) {
        NSLog(@"%d",i);
    }
    
    
    NSLog(@"--------------------");
    
    //自定义的断点我们可以添加一些判断条件
    for (int i = 0; i < 10; i++) {
        NSLog(@"%d",i);
    }
    
    
}


@end
