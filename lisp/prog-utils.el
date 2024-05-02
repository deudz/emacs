;;; prog-utils.el --- utilitários de programação -*- lexical-binding: t; -*-
;;; Commentary:
;; Este arquivo instala vários plugins que facilita programação

;;; Code:
;; Auto complete igual o VSCode
(use-package lsp-mode
  :hook ((prog-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-warn-no-matched-clients nil)
  :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(use-package company
  :hook ((lsp-mode . company-mode)
         (emacs-lisp-mode . company-mode))
  :bind (:map evil-insert-state-map
         ("C-SPC" . company-complete)))

;; Validador de syntax
(use-package flycheck
  :hook (eglot-mode . flycheck-mode))
(use-package flycheck-inline
  :after flycheck
  :hook (flycheck-mode . flycheck-inline-mode))

;; Projetos com projectile
(use-package projectile)

(provide 'prog-utils)
;;; prog-utils.el ends here
