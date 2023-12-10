;;; init.el --- um dos arquivos mais importantes -*- lexical-binding: t; -*-
;;; Commentary:
;; NÃO DELETE ESTE ARQUIVO.

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "lisp"))

(require 'bootstrap)
(require 'evil)
(require 'vertico)
(require 'general)
(require 'keybindings)
(require 'which-key)
(require 'lsp)
(require 'themes)
(require 'dashboard)
(require 'beacon)
(require 'magit)

(require 'misc)

;;; init.el ends here
