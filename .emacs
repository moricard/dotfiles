;; Keyboard settings

;;;; alt is alt, cmd is meta
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;;;; special key bindings
(global-set-key (kbd "C-c s") 'shell)
(global-set-key (kbd "C-c f") 'lusty-file-explorer)

;; Plugins
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/zencoding-mode")
(add-to-list 'load-path "~/.emacs.d/yasnippet")

(require 'workgroups)
(require 'zencoding-mode)
(require 'yasnippet)
(require 'lusty-explorer)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(add-hook 'sgml-mode-hook 'zencoding-mode)

;; Local modes
(yas-global-mode 1)
(workgroups-mode 1)
(wg-load "~/.emacs.d/workgroups")

;; Vanilla window
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Generated stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (adwaita)))
 '(custom-safe-themes (quote ("cc83fa4ffec1545d4bde6a44b1fb8431f9090874a22554920c709fa97338d0aa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
