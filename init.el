;;; init.el --- um dos arquivos mais importantes -*- lexical-binding: t; -*-
;;; Commentary:
;; NÃO DELETE ESTE ARQUIVO.

;;; Code:

(require 'org)
(require 'ob-tangle)

(defun load-init () (load (expand-file-name
			   "straight/repos/straight.el/bootstrap.el"
			   user-emacs-directory)
			  nil 'nomessage)
       (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

(if (file-exists-p (expand-file-name
		    "straight/repos/straight.el/bootstrap.el"
		    user-emacs-directory))
    (load-init)
  (warn
   (concat
    "Por favor execute " (abbreviate-file-name
		   (concat user-emacs-directory "bootstrap"))
    " como um USUÁRIO NORMAL para instalar estas configurações!")))

(setq gc-cons-threshold most-positive-fixnum)

;;; init.el ends here
