;;; early-init.el --- um dos arquivos mais importantes -*- lexical-binding: t; -*-
;;; Commentary:
;; NÂO DELETE ARQUIVO.

;;; Code:

;; Carregando o diretório com os arquivos necessários
(add-to-list 'load-path (concat user-emacs-directory "lisp"))

;; Precisamos disso porque estamos usando o straight.el
(setq package-enable-at-startup nil)

;; Mostre somente erros, não mostre avisos
(setq warning-minimum-level :error)
 
;; Deixando o Emacs mais polido
(tool-bar-mode 0)   ; Desabilitar a barra de ferramentas
(menu-bar-mode 0)   ; Desabilitar a barra de menu
(scroll-bar-mode 0) ; Desabilitar a barra de rolagem
(tooltip-mode 0)    ; Desabilitar os pop-ups do mouse

;;; early-init.el ends here
