(tool-bar-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-visual-line-mode 1)
(electric-pair-mode 1)

(setq visible-bell t
      make-backup-files nil
      auto-save-default nil 
      inhibit-startup-message t 
      initial-scratch-message nil
      create-lockfiles nil)

(setq-default cursor-type 'bar)

(set-face-attribute 'default nil :height 105)

(vertico-mode 1)
(marginalia-mode 1)

;; Closing unchanged buffers without confirmation
(add-hook 'dired-mode-hook
		  (lambda ()
			(dired-hide-details-mode)))

(defun volatile-kill-buffer ()
  "Kill current buffer unconditionally."
  (interactive)
  (let ((buffer-modified-p nil))
	(kill-buffer (current-buffer))))

(global-set-key (kbd "C-x k") 'volatile-kill-buffer)  

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(vertico embark marginalia)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
