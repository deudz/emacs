;;; interface.el --- a interface customizada -*- lexical-binding: t; -*-
;;; Commentary:
;; Alguns ajustes para deixar o Emacs bem minimalista

;;; Code:

;; O tema `bismuth' feito por mim ;)
(setq custom-theme-directory (concat user-emacs-directory "themes"))
(load-theme 'bismuth t)

;; Numerar as linhas somente no modo de programação
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative) ; Linhas relativas

;; Destacar a linha onde o cursor está
(global-hl-line-mode 1)

;; Delimitadores arco-íres
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Mode line
(use-package delight)
(delight '((ivy-mode nil ivy)
           (counsel-mode nil counsel)
           (beacon-mode nil beacon)
           (company-mode nil company)
           (which-key-mode nil which-key)
           (eldoc-mode nil eldoc)
           (yas-minor-mode nil yasnippet)))

(use-package hide-mode-line
  :hook
  (help-mode . hide-mode-line-mode)
  (vterm-mode . hide-mode-line-mode))

(use-package moody
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (moody-replace-eldoc-minibuffer-message-function))

 (let ((line (face-attribute 'mode-line :underline)))
    (set-face-attribute 'mode-line          nil :overline   line)
    (set-face-attribute 'mode-line-inactive nil :overline   line)
    (set-face-attribute 'mode-line-inactive nil :underline  line)
    (set-face-attribute 'mode-line          nil :box        nil)
    (set-face-attribute 'mode-line-inactive nil :box        nil)
    (set-face-attribute 'mode-line-inactive nil :background "#000000"))

(provide 'interface)
;;; interface.el ends here
