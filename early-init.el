;;; early-init.el --- um dos arquivos mais importantes -*- lexical-binding: t; -*-
;;; Commentary:
;; NÂO DELETE ARQUIVO.

;;; Code:

;; Carregando o diretório com os arquivos necessários
(add-to-list 'load-path (concat user-emacs-directory "lisp"))

;; Precisamos disso porque estamos usando o straight.el
(setq package-enable-at-startup nil)
 
;; Deixando o Emacs mais polido
(push '(menu-bar-lines . 0)   default-frame-alist) ; Desabilita a barra de ferrametas
(push '(tool-bar-lines . 0)   default-frame-alist) ; Desabilita a barra de menu
(push '(vertical-scroll-bars) default-frame-alist) ; Desabilita a barra de rolagem
(tooltip-mode 0)    ; Desabilita os pop-ups do mouse

(setq menu-bar-mode nil
      tool-bar-mode nil
      scroll-bar-mode nil)

;;; early-init.el ends here
