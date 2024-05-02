;;; keybindings.el --- criando alguns atalhos -*- lexical-binding: t; -*-
;;; Commentary:
;; A maioria dos atalhos aqui usam a tecla `SPC' (Espaço) + uma letra.

;;; Code:

;; Definir a tecla líder
(evil-set-leader 'normal (kbd "SPC"))

;; Arquivos
(evil-define-key 'normal 'global
  (kbd "<leader>ff") #'find-file
  (kbd "<leader>fe") #'consult-recent-file
  (kbd "<leader>fs") #'save-buffer
  (kbd "<leader>fS") #'save-some-buffers
  (kbd "<leader>fd") #'delete-file
  (kbd "<leader>fr") #'rename-file)

;; Buffers
(evil-define-key 'normal 'global
  (kbd "<leader>bb") #'consult-buffer
  (kbd "<leader>bl") #'ibuffer
  (kbd "<leader>bn") #'next-buffer
  (kbd "<leader>bp") #'previous-buffer
  (kbd "<leader>bd") #'kill-current-buffer
  (kbd "<leader>bk") #'kill-buffer)
(keymap-global-set "C-x C-b" #'ibuffer)

;; Janelas
(evil-define-key 'normal 'global
  (kbd "<leader>ww") #'other-window
  (kbd "<leader>wq") #'delete-window
  (kbd "<leader>w0") #'delete-window
  (kbd "<leader>wo") #'delete-other-windows
  (kbd "<leader>w1") #'delete-other-windows
  (kbd "<leader>wS") #'split-window-below
  (kbd "<leader>ws") #'split-window-right
  (kbd "<leader>wh") #'evil-window-left
  (kbd "<leader>wj") #'evil-window-down
  (kbd "<leader>wk") #'evil-window-up
  (kbd "<leader>wl") #'evil-window-right)

;; Dired
(evil-define-key 'normal 'global
  (kbd "<leader>dd") #'dired)

;; Ajuda
(evil-define-key 'normal 'global
  (kbd "<leader>hf") #'describe-function
  (kbd "<leader>hv") #'describe-variable
  (kbd "<leader>hk") #'describe-key
  (kbd "<leader>hx") #'describe-command
  (kbd "<leader>ha") #'apropos-command
  (kbd "<leader>hc") #'describe-key-briefly)

;; Sair
(evil-define-key 'normal 'global
  (kbd "<leader>qq") #'save-buffers-kill-emacs
  (kbd "<leader>qr") #'restart-emacs
  (kbd "<leader>qQ") #'kill-emacs)

;; Outros
(evil-define-key 'normal 'global
  (kbd "<leader>SPC") #'execute-extended-command)
(keymap-set minibuffer-local-map "<escape>" #'abort-recursive-edit)

;; Nomear os prefixos
(which-key-add-key-based-replacements
  "SPC f" "arquivos"
  "SPC b" "buffers"
  "SPC w" "janela"
  "SPC d" "dired"
  "SPC h" "ajuda"
  "SPC q" "sair/reiniciar")

(provide 'keybindings)
;;; keybindings.el ends here
