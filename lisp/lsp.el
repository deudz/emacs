;;; lsp.el --- auto-code-completion -*- lexical-binding: t; -*-
;;; Commentary:
;; Esse arquivo gerencia o Protocolo de Servidor de Linguagem
;; (Language Server Protocol).  Ele é basecamente um IntelliSense do VSCode
;; só que no Emacs, Vim e outros editores de texto.

;;; Code:
(use-package lsp-mode
  :init (setq lsp-keymap-prefix "C-c l")
  :hook ((prog-mode . lsp-mode)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
;;;(use-package lsp-ui)
(use-package company
  :hook (after-init . global-company-mode))
(use-package flycheck
  :hook (after-init . global-flycheck-mode))

;; Não mostre um aviso quando não tiver um servidor para a linguagem
(setq lsp-warn-no-matched-clients nil)

(provide 'lsp)
;;; lsp.el ends here

