;;; which-key.el --- mostrar os atalhos -*- lexical-binding: t; -*-
;;; Commentary:
;; Quando apertar um atalho que tem outros atalhos dentro dele, exemplo `C-x'
;; irá aparecer um minibuffer mostrando os possíveis atalhos a uma descrição
;; breve.

;;; Code:
(use-package which-key
  :init (which-key-mode 1))

(provide 'which-key)
;;; which-key.el ends here
