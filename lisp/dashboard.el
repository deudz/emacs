;;; dashboard.el --- overhaul da página inicial -*- lexical-binding: t; -*-
;;; Commentary:
;; Quando iniciar o Emacs, você verá esse menu ao inves do menu do Vanilla Emacs

;;; Code:

(use-package dashboard
  :config (dashboard-setup-startup-hook))

(provide 'dashboard)
;;; dashboard.el ends here
