;;; evil.el --- configuração do evil-mode -*- lexical-binding: t; -*-
;;; Commentary:
;; Um emulador de atalhos do Vim.

;;; Code:
(use-package evil
  :init (evil-mode 1))

;; Habilitar o sistema de refazer
(use-package undo-fu
  :config (evil-set-undo-system 'undo-fu))

(provide 'evil)
;;; evil.el ends here
