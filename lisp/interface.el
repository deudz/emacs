;;; interface.el --- a interface customizada -*- lexical-binding: t; -*-
;;; Commentary:
;; Alguns ajustes para deixar o Emacs bem minimalista

;;; Code:

(use-package doom-themes)

;; O tema `bismuth' feito por mim ;)
(setq custom-theme-directory (concat user-emacs-directory "themes"))
;;(load-theme 'bismuth t)
(load-theme 'doom-ayu-mirage t)

;; Numerar as linhas somente no modo de programação
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative) ; Linhas relativas

;; Destacar a linha onde o cursor está
(global-hl-line-mode 1)

;; Delimitadores arco-íres
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Mode line
(use-package hide-mode-line
  :hook
  (help-mode . hide-mode-line-mode)
  (term-mode . hide-mode-line-mode)
  (eshell-mode . hide-mode-line-mode))

(use-package mood-line
  :config (mood-line-mode))

(use-package all-the-icons)

(provide 'interface)
;;; interface.el ends here
