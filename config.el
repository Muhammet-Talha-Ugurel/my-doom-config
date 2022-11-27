;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    config.el                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mugurel <muhammedtalhaugurel@gmai...>      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2022/11/04 17:09:52 by mugurel           #+#    #+#              ;
;    Updated: 2022/11/27 23:33:04 by mugurel          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

(setq user-full-name "MTU"
      user-mail-address "muhammedtalhaugurel@gmail.com")

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(setq-default indent-tabs-mode t)
(setq backward-delete-char-untabify-method nil)
(setq indent-tabs-mode t)
(defun my-insert-tab-char ()
  (interactive)
  (insert "\t"))
(global-set-key (kbd "TAB") 'my-insert-tab-char) ; same as Ctrl+i

;;TABS config
(setq centaur-tabs-set-bar 'over
      centaur-tabs-set-icons t
      centaur-tabs-gray-out-icons 'buffer
      centaur-tabs-height 24
      centaur-tabs-set-modified-marker t
      centaur-tabs-style "bar"
      centaur-tabs-modified-marker "•")
(map! :leader
      :desc "Toggle tabs globally" "t c" #'centaur-tabs-mode
      :desc "Toggle tabs local display" "t C" #'centaur-tabs-local-mode)
(evil-define-key 'normal centaur-tabs-mode-map (kbd "<SPC> <right>") 'centaur-tabs-forward        ; default Doom binding is 'g t'
                                               (kbd "<SPC> <left>")  'centaur-tabs-backward       ; default Doom binding is 'g T'
                                               (kbd "<SPC> <down>")  'centaur-tabs-forward-group
                                               (kbd "<SPC> <up>")    'centaur-tabs-backward-group)
; Load general features files
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))

(load "~/.doom.d/list.el")
(load "~/.doom.d/string.el")
(load "~/.doom.d/comments.el")
(load "~/.doom.d/header.el")


;(load "~/.doom.d/42devkit/42devkit.el")
;(require '42devkit)
