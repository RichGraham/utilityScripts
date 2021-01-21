;; ____________________________________________________________________________
;; Aquamacs custom-file warning:
;; Warning: After loading this .emacs file, Aquamacs will also load
;; customizations from `custom-file' (customizations.el). Any settings there
;; will override those made here.
;; Consider moving your startup settings to the Preferences.el file, which
;; is loaded after `custom-file':
;; ~/Library/Preferences/Aquamacs Emacs/Preferences
;; _____________________________________________________________________________

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(tool-bar-mode -1)
(setq x-select-enable-clipboard t)
(kill-buffer "*scratch*")
(kill-buffer "*Messages*")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(kill-buffer "*scratch*")


;;turn in flyspell for latex by default
(add-hook 'LaTeX-mode-hook #'turn-on-flyspell)


(setq-default TeX-master nil) ; LaTEx: Query for master file.


;;don't spell check comments
(setq ispell-check-comments nil)

;;(setq ispell-program-name "aspell") ;;use aspell instead of default osx dictionary

         ;;(flyspell-duplicate-face ((t (:bold t :foreground "Gold3" :underline t :weight bold))))
         ;;  (flyspell-incorrect-face ((t (:bold t :foreground "OrangeRed" :underline t :weight bold))))

;; Don't clutter up directories with files~
;;(setq backup-directory-alist `(("." . ,(expand-file-name  (concat dotfiles-dir "backups")))))

;; Don't clutter with #files either
;;(setq auto-save-file-name-transforms     `((".*" ,(expand-file-name (concat dotfiles-dir "backups")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "adobe" :family "courier")))))


;; sample code for setting a background color depending on file name extension

(defun my-set-theme-on-mode ()
  "set background color depending on file suffix"
  (interactive)
  (let ((fileNameSuffix (file-name-extension (buffer-file-name) ) ))
    (cond
     ((string= fileNameSuffix "el" ) (set-background-color "honeydew"))
     ((string= fileNameSuffix "txt" ) (set-background-color "cornsilk"))
     ((string= fileNameSuffix "c" ) (set-background-color "Lavender"))
     ((string= fileNameSuffix "sh" ) (set-background-color "Light Cyan"))
     (t (message "%s" "no match found"))
     )
    ))
(add-hook 'find-file-hook 'my-set-theme-on-mode)


;; pick modes for particulat file extensions
(add-to-list 'auto-mode-alist '("\\.pf\\'" . f90-mode))
