(setq backup-directory-alist `((".*" . ,temporary-file-directory))) ;让所有 ~ 备份文件全部放在 /tmp 目录
(setq make-backup-files t)                                          ;开启备份
(setq kept-old-versions 10)                                         ;备份老版本的数量
(setq kept-new-versions 20)                                         ;备份新版本的数量
(setq delete-old-versions t)                                        ;自动删除老版本
(setq backup-by-copying t)                                          ;拷贝时自动备份
(setq version-control t)                                            ;多版本备份

(provide 'init-backup)
