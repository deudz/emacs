;;; lsp.el --- auto-code-completion -*- lexical-binding: t; -*-
;;; Commentary:
;; Esse arquivo gerencia o Protocolo de Servidor de Linguagem
;; (Language Server Protocol).  Ele é basecamente um IntelliSense do VSCode
;; só que no Emacs, Vim e outros editores de texto.

;;; Code:
(use-package eglot
  :hook (prog-mode . eglot-ensure)
  :commands eglot)
(use-package company
  :hook (eglot-mode . company-mode)
  :bind (:map evil-insert-state-map
         ("C-SPC" . company-complete)))
(use-package flycheck
  :hook (eglot-mode . flycheck-mode))
(use-package flycheck-inline
  :after flycheck
  :hook (flycheck-mode . flycheck-inline-mode))

(provide 'lsp)
;;; lsp.el ends here

