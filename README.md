# bashcgi - 一个使用 bash 编写的网站开发框架

## 缘起

运维工程师时常有开发 web 系统的需求，如监控，自动化等需求，可以使用 php/python/perl 之类的语言开发，也可以使用运维工程师最熟悉的 shell 语言。bashcgi 尝试用尽量“纯”的 shell 代码实现一个现代化、易用的网站开发框架，简化 shell/cgi 代码的编写。

## 设计目标

1. 尽量使用 bash 内置功能，减少外部命令调用，提高效率。
2. 模版系统。模版语言直接为 shell 语言，避免重新发明一门模版语言带来的困难。
3. HTTP 变量自动导出。方便在代码中直接引用。

## 教程

### param.cgi - get, post, cookie 变量自动导出
#### http 变量访问
```
#!/bin/bash

# 1.cgi

source param.cgi

echo "Content-Type: text/plain"
echo

echo $_GET_var

# $_POST_xxxx 获取 post 变量
# $_COOKIE_yyyy 访问 cookie 变量
```

#### 遍历所有 get(post, cookie) 变量
```
#!/bin/bash

# 2.cgi

source param.cgi

echo "Content-Type: text/plain"
echo

for k in ${_GET[@]}; do
    eval "v=\$_GET_$k"
    echo "$k => $v"
done

# ${_POST[@]}
# ${_COOKIE[@]}
```

#### template.cgi - 模版功能
```
<? # 3.t ?>
<h3>hello, <? echo -n $name ?><h3>
```

```
#!/bin/bash

# 3.cgi

source template.cgi

name="momo"
render_template 3.t
```

### 完整的例子
见 demo 目录

## 演示网站

http://www.shellblog.info/demo

http://www.shellblog.com
