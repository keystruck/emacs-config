;; make-invisible.el - interactive functions that hide and reveal text in
;; current buffer

(defvar invisibility-overlay
  "Overlay used by hide-buffer-contents.")

(defun hide-buffer-contents ()
  "Make all text in current buffer invisible."
  (interactive)
  (progn
    (setq invisibility-overlay
;;      "Overlay that makes invisible all text in current buffer."
	  (make-overlay
	   (point-min)        ; buffer start
	   (point-max)        ; buffer end
	   (current-buffer)
	   nil                ; include new text added before start
	   t))                ; include new text added at end
    (overlay-put invisibility-overlay 'invisible t)))


(defun reveal-buffer-contents ()
  "Reveal text in current buffer that has been hidden by make-invisible."
  (interactive)
  (delete-overlay invisibility-overlay))
