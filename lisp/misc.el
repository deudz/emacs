;;; misc.el --- coisas que são miscelâneas -*- lexical-binding: t; -*-
;;; Commentary:
;; Aqui eu colocarei coisas que não tem muito sentido fazer um arquivo
;; só para elas.

;;; Code:

;; Não crie arquivos de backup
(setq make-backup-file nil)

;; Numerar as linhas
(setq display-line-numbers t)
(global-display-line-numbers-mode 1)

;; Destacar a linha onde o cursor está
(global-hl-line-mode 1)

;; Quando digitar ( ou " ou { ou [ o Emacs automaticamente colocará ]
;; ou } ou " ou )
(electric-pair-mode 1)

(provide 'misc)
;;; misc.el ends here
