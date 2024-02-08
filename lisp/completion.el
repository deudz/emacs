;;; completion.el --- um autocompletor melhor -*- lexical-binding: t; -*-
;;; Commentary:
;; Quando você aperta `TAB' em um minibuffer, exemplo `M-x', aparece um
;; outro minibuffer para te mostrar as opções.  Esse plug-in deixa isso bem
;; mais fácil e melhor.

;;; Code:
(use-package helm
  :init (helm-mode 1))

;; Ignorar a captaliação da palavra
(setq completion-ignore-case t)

(provide 'completion)
;;; completion.el ends here.
