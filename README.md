# Rekols's Emacs

The same feel as Deepin Emacs.

# How to use 

`init.el` in the `~/.emacs.d` directory to create a file, write `load-file ("~/remacs/custom.el")`...

Dependencies: `sudo apt install clang libclang1`

# Plugins (一些插件)

* [auto-complete](https://github.com/auto-complete/auto-complete)

* [popup-el](https://github.com/auto-complete/popup-el)

* [yasnippet](https://github.com/joaotavora/yasnippet)

* [tabbar](https://www.emacswiki.org/emacs/TabBarMode)

....

# Features (特点)

打开文件自动进入 Less 模式（只读模式），类似 Vim，有的时候不进行编辑操作，在 Less 下可以快速阅读代码。

# 快捷键

## Buffer (缓冲区)
功能名 | 快捷键
:--- | ---
Less (只读模式) | C-l
隐藏注释 | M-m
打开缓冲区列表 | C-x C-b
关闭缓冲区 | C-x k
关闭选中以外缓冲区 | C-x 1 or C-x ;
切换光标所在缓冲区 | C-x o

## Dired (文件管理器)
功能名 | 快捷键
:--- | ---
新建文件 | E
搜索名称 | S
上一级目录 | q
打开文件或目录 | e
文件大小 | s
重命名 | n

## Speedbar (导航栏)
功能名 | 快捷键
:--- | ---
弹出 | M-j
展开当前行 | x
收缩当前行 | z
刷新 | g
上一级目录 | q
删除 | d
重命名 | r
创建目录 | m

## Other (炒鸡好用的)
功能名 | 快捷键
:--- | ---
撤销 | C-/
重做 | C-?
缩放减小 | M--
缩放增大 | M-=
root打开 | s-f
有道翻译 | C-a
终端 | M-t
