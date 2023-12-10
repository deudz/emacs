;;; vertico.el --- um autocompletor melhor -*- lexical-binding: t; -*-
;;; Commentary:
;; Quando você aperta `TAB' em um minibuffer, exemplo `M-x', aparece um
;; outro minibuffer para te mostrar as opções.  Esse plug-in deixa isso bem
;; mais fácil e melhor.

;;; Code:
(use-package vertico
  :init (vertico-mode 1))
(use-package consult)

(use-package vertico-directory
  :after vertico
  :straight nil
  :bind (:map vertico-map
              ("DEL" . vertico-directory-delete-word))
  :hook ((rfn-eshadow-update-overlay . vertico-directory-tidy)
	 (minibuffer-setup . vertico-repeat-save)))

;; Ignorar a captaliação da palavra
(setq completion-ignore-case t)

(provide 'vertico)
;;; vertico.el ends here.
