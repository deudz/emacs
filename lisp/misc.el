;;; misc.el --- coisas que são miscelâneas -*- lexical-binding: t; -*-
;;; Commentary:
;; Aqui eu colocarei coisas que não tem muito sentido fazer um arquivo
;; só para elas.

;;; Code:

;; Não crie arquivos de backup
(setq make-backup-files nil)

;; Usar espaços em vez de tabs
(setq-default indent-tabs-mode nil)

;; Quando digitar ( ou " ou { ou [ o Emacs automaticamente colocará ]
;; ou } ou " ou )
(electric-pair-mode 1)

;; Usar `y' e `n' invêz de `yes' e `no'
(defalias 'yes-or-no-p #'y-or-n-p)

;; Tamanho inicial da janela
(push '(width . 80)  default-frame-alist)
(push '(height . 40) default-frame-alist)

(provide 'misc)
;;; misc.el ends here
