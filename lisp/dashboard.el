;;; dashboard.el --- overhaul da página inicial -*- lexical-binding: t; -*-
;;; Commentary:
;; Quando iniciar o Emacs, você verá esse menu ao inves do menu do Vanilla Emacs

;;; Code:

(use-package dashboard
  :config (dashboard-setup-startup-hook))
(setq dashboard-banner-ascii
      "
 _______  _______  _______  _______  _______
(  ____ \\(       )(  ___  )(  ____ \\(  ____ \\
| (    \\/| () () || (   ) || (    \\/| (    \\/
| (__    | || || || (___) || |      | (_____
|  __)   | |(_)| ||  ___  || |      (_____  )
| (      | |   | || (   ) || |            ) |
| (____/\\| )   ( || )   ( || (____/\\/\\____) |
(_______/|/     \\||/     \\|(_______/\\_______)
"
)
(setq dashboard-startup-banner 'ascii)

(provide 'dashboard)
;;; dashboard.el ends here
