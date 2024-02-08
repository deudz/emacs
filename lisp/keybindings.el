;;; keybindings.el --- criando alguns atalhos -*- lexical-binding: t; -*-
;;; Commentary:
;; A maioria dos atalhos aqui usam a tecla `SPC' (Espaço) + uma letra.

;;; Code:

;; Criar um definidor
(general-create-definer nmap/leader-key
  :states '(normal motion)
  :keymaps 'override
  :prefix "SPC"
  :global-prefix "M-m")

;; Arquivos
(nmap/leader-key
  "f"  '(:ignore t :wk "arquivos")
  "ff" '(find-file :wk "Abrir/Criar arquivo")
  "fs" '(save-buffer :wk "Salvar arquivo")
  "fS" '(save-some-buffers :wk "Salvar alguns arquivos")
  "fd" '(delete-file :wk "Deletar arquivo")
  "fr" '(rename-file :wk "Renomear arquivo"))

;; Buffers
(nmap/leader-key
  "b"  '(:ignore t :wk "buffer")
  "bb" '(consult-buffer :wk "Mudar o buffer")
  "bl" '(ibuffer :wk "Listar os buffers")
  "bn" '(next-buffer :wk "Proximo buffer")
  "bp" '(previous-buffer :wk "Buffer anterior")
  "bd" '(kill-current-buffer :wk "Deletar buffer atual")
  "bk" '(kill-buffer :wk "Selecionar e deletar buffer"))
(general-def "C-x C-b" 'ibuffer)

;; Janelas
(nmap/leader-key
  "w"  '(:ignore t :wk "janela")
  "wq" '(delete-window :wk "Fechar janela em foco")
  "wo" '(delete-other-windows :wk "Fechar todas as outras janelas")
  "wS" '(split-window-below :wk "Dividir janela verticalmente")
  "ws" '(split-window-right :wk "Dividir janela horizontalmente")
  "wh" '(evil-window-left :wk "Ir para janela à esquerda")
  "wj" '(evil-window-down :wk "Ir para janela abaixo")
  "wk" '(evil-window-up :wk "Ir para janela acima")
  "wl" '(evil-window-right :wk "Ir para janela à direita"))

;; Dired
(nmap/leader-key
  "d"  '(:ignore t :wk "dired")
  "dd" '(dired :wk "Abrir diretório"))

;; Ajuda
(nmap/leader-key
  "h"  '(:ignore t :wk "ajuda")
  "hf" '(describe-function :wk "Descreva uma função")
  "hv" '(describe-variable :wk "Descreva uma variavel")
  "hk" '(describe-key :wk "Descreva um atalho")
  "hx" '(describe-command :wk "Descreva um comando"))

;; Outros
(nmap/leader-key
  "SPC" '(execute-extended-command :wk "Executar um comando"))
(general-def minibuffer-local-map "<escape>" 'keyboard-escape-quit)

;; Sair
(nmap/leader-key
  "q"  '(:ignore t :wk "sair")
  "qq" '(save-buffers-kill-emacs :wk "Sair e salvar")
  "qr" '(restart-emacs :wk "Reiniciar o Emacs")
  "qQ" '(kill-emacs :wk "Matar o processo do Emacs"))

(provide 'keybindings)
;;; keybindings.el ends here
