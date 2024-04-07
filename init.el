;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;                                                                          ;;
;;;;  init.el                                                                 ;;
;;;;  v. 2024-03-02                                                           ;;
;;;;                                                                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;
;;; Emacs local configuration bootstrap file
;;;
;;; Principal purpose is to define and load machine-specific
;;; configuration files, particularly org mode init file.
;;;
;;; Sourced if none of the following exist:
;;;   * $HOME/.emacs
;;;   * $HOME/.emacs.el
;;;   * $HOME/emacs.d/init.el
;;;

;; Keep init files clean by storing emacs custom variables in separate file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror 'nomessage)

;; Use org mode to keep init file organized
(defvar org-init-file (locate-user-emacs-file "emacs.org"))
(when (file-exists-p org-init-file) (org-babel-load-file org-init-file))

;;;; init.el ends
