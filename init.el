;;; init.el --- um dos arquivos mais importantes -*- lexical-binding: t; -*-
;;; Commentary:
;; NÃO DELETE ESTE ARQUIVO.

;;; Code:

(require 'org)
(require 'ob-tangle)

(load-file (concat user-emacs-directory "bootstrap.el"))

(org-babel-load-file (concat user-emacs-directory "config.org"))

(setq gc-cons-threshold most-positive-fixnum)

;;; init.el ends here
