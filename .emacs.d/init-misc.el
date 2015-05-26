;; Load agda-mode
;; (distributed with agda)
(setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
(setq exec-path (append exec-path '("~/.cabal/bin")))
(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))

;; Load clang-format.el
(load "/usr/share/clang/clang-format.el")
(global-set-key (kbd "C-` TAB") 'clang-format-region)

;; Load maxima-mode
;; (distributed with maxima)
(autoload 'maxima-mode "maxima" "Maxima mode" t)
(autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
(autoload 'maxima "maxima" "Maxima interaction" t)
(autoload 'imath-mode "imath" "Imath mode for math formula input" t)
(setq imaxima-use-maxima-mode-flag t)
(add-to-list 'auto-mode-alist '("\\.ma[cx]" . maxima-mode))

;; Load oz-mode
;; https://aur.archlinux.org/packages/emacs-oz-mode/
(require 'oz)

;; Load pkgbuild-mode
;; https://www.archlinux.org/packages/community/any/emacs-pkgbuild-mode/
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\.install$" . sh-mode))

;; Load bc-mode.el
(load "~/.emacs.d/my-elisp/bc-mode.el")
(add-to-list 'auto-mode-alist '("\.bc$" . bc-mode))

;; Load google-translate-mode.el
(load "~/.emacs.d/my-elisp/google-translate-mode.el")

;; Load whitespace-mode.el
(load "~/.emacs.d/my-elisp/whitespace-mode.el")
(add-to-list 'auto-mode-alist '("\.ws$" . whitespace-mode))

;; Load visual-basic-mode.el
(load "~/.emacs.d/my-elisp/visual-basic-mode.el")
(add-to-list 'auto-mode-alist '("\\.bas\\'" . visual-basic-mode))
(add-to-list 'auto-mode-alist '("\\.vbs\\'" . visual-basic-mode))
(add-to-list 'auto-mode-alist '("\\.vb\\'" . visual-basic-mode))
(add-to-list 'auto-mode-alist '("\\.bas\\'" . visual-basic-mode))
(add-to-list 'auto-mode-alist '("\\.frm\\'" . visual-basic-mode))
(add-to-list 'auto-mode-alist '("\\.cls\\'" . visual-basic-mode))

;; Load trans-mode.el
(load "~/.emacs.d/my-elisp/trans-mode.el")
