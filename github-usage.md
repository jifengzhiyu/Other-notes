# 建库

1、github网页上复制新建库的地址

2、git:输入git clone 粘贴地址

# 加入文件

**Mac:cd 文件路径**

1、git:输入git status:查看状态

2、**git add .** :添加

3、git status

4、git commit -m "自己添加备注"

5、git push:上传云端

更改文件内容也同理

# 删除库

github里的 settings

Danger Zone

delete this repository

# 远程更新

先从远程仓库下载一个 temp

**git remote -v**

从 main remote repo 下载到 temp 分支

**git fetch origin main:temp**

对比 temp & local

**git diff temp**

没问题之后 合并操作

**git merge temp**

删除之前下载的 temp 分支 => 大功告成

**git branch -d temp**

# 修复错误提交身份

```apl
# 修复 commit 的时候 因为 local git config 而造成的错误身份提交
# see below docs
# https://juejin.cn/post/6844903987448283144
# https://blog.csdn.net/yusufolu9/article/details/53706269
# 关键命令 
cd .git
git config user.name "以后用于该仓库提交的身份的 user name"
git config user.email "以后用于该仓库提交的身份 email"

# 查看文件是否修改成功 主要看 username useremail
cat config 

# 返回上一级目录 根目录
cd ../
# 创建脚本文件 代码如下 
touch email.sh
# 打开文件 加入以下代码
#!/bin/sh

git filter-branch --env-filter '

OLD_EMAIL="之前错误提交的那个身份的邮箱"
CORRECT_NAME="新的正确的身份的名字"
CORRECT_EMAIL="新的正确的邮箱"

# 执行修复的代码
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

# 本质上小绿点是根据邮箱为关键字段去确认的

# mac 上修改文件的权限 如果发生 permission denied 的情况
chmod 777 email.sh

# 执行脚本
./email.sh
# 会出现重写前的倒计时警告, 给 ctrl C 去取消, 过一会就会陆续重写所有记录

# 重写所有记录之后 重新 push 到 remote repo]
git push origin --force --all
# 或者修改一下文件 然后重新 git add . commit push ...

# 如果 第二次想要继续执行 email.sh 的文件报错的时候 说 本地已经有一个 backup 需要-f 啥的删除 才能去强制重写
# 此时我们需要 通过下面的命令 删除本地的一个备份
git filter-branch -f \
--index-filter 'git rm --cached --ignore-unmatch Rakefile' HEAD
# 执行完之后重新执行 重写 log 里面提交邮箱的脚本文件 ./email.sh

# 如果上面的方法都失败了
# 实在不行的话 就把整个本地的 repo 删掉, 重新下载, 然后进去 .git 重新配置该 repo 下的 username email
# 重新执行上面的步骤
```

