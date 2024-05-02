;;; completion.el --- um autocompletor melhor -*- lexical-binding: t; -*-
;;; Commentary:
;; Quando você aperta `TAB' em um minibuffer, exemplo `M-x', aparece um
;; outro minibuffer para te mostrar as opções.  Esse plug-in deixa isso bem
;; mais fácil e melhor.

;;; Code:
(use-package vertico
  :init (vertico-mode 1))

(use-package consult)

;; Ignorar a captaliação da palavra
(setq completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; Isso deixa o selecionamento de arquivos muito melhor
(add-hook 'rfn-eshadow-update-overlay-hook #'vertico-directory-tidy)
(add-hook 'minibuffer-setup-hook #'vertico-repeat-save)
(define-key vertico-map (kbd "DEL") #'vertico-directory-delete-char)

(provide 'completion)
;;; completion.el ends here.
