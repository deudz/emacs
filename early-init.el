;;; early-init.el --- um dos arquivos mais importantes -*- lexical-binding: t; -*-
;;; Commentary:
;; NÂO DELETE ARQUIVO.

;;; Code:

;; Precisamos disso porque estamos usando o straight.el
(setq package-enable-at-startup nil)

;; Mostre somente erros, não mostre avisos
(setq warning-minimum-level :error)
 
;; Deixando o Emacs mais polido
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;;; early-init.el ends here
