# Rekols's Emacs

可能比 Spacemacs 好用一点。

![](https://github.com/rekols/remacs/blob/master/screenshot/20180525104353.png)

# 怎么使用

在 `~/.emacs.d` 目录下创建一个 init.el 文件，写入 `load-file ("~/remacs/loader.el")`，括号内是 loader.el 的文件路径。

依赖: 

* `sudo apt install clang libclang1`

# 插件

* [auto-complete](https://github.com/auto-complete/auto-complete)

* [popup-el](https://github.com/auto-complete/popup-el)

* [yasnippet](https://github.com/joaotavora/yasnippet)

* [tabbar](https://www.emacswiki.org/emacs/TabBarMode)

....

# 特点

打开文件默认进入只读模式（Less），在 Less 下可以快速阅读代码，k、j 为上下滚屏，按 i 进入编辑模式，按下 q 自动跳转到文件管理器。

推荐使用 [source-code-pro](https://github.com/adobe-fonts/source-code-pro) 字体

# 快捷键

* s 为 Win 键
* C 为 Ctrl 键
* M 为 Alt 键

## Buffer (缓冲区)
功能名 | 快捷键
:--- | ---
Less (只读模式) | M-l
隐藏注释 | M-m
打开缓冲区列表 | C-x C-b
关闭缓冲区 | C-x k
关闭选中以外缓冲区 | C-x 1 或者 C-x c
切换光标所在缓冲区 | C-x o
向上滚动一行 | s-K
向下滚动一行 | s-J

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
