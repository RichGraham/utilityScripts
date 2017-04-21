(tool-bar-mode -1)
(setq x-select-enable-clipboard t)
(kill-buffer "*scratch*")
(kill-buffer "*Messages*")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(kill-buffer "*scratch*")


;;turn in flyspell for latex by default
(add-hook 'LaTeX-mode-hook #'turn-on-flyspell)

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
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 173 :width normal :foundry "urw" :family "Nimbus Mono L")))))
