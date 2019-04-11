;;; packages.el --- dockerfile Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner
;; Copyright (c) 2015 Alan Zimmerman & Contributors
;;
;; Author: Alan Zimmerman <alan.zimm@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst dockerfile-packages '(dockerfile-mode))

(defun dockerfile/init-dockerfile-mode ()
  (use-package dockerfile-mode
    :defer t
    :config
    (progn
      (spacemacs/declare-prefix-for-mode 'dockerfile-mode
        "mc" "compile")
      (spacemacs/set-leader-keys-for-major-mode 'dockerfile-mode
        "cb" 'dockerfile-build-buffer
        "cB" 'dockerfile-build-no-cache-buffer))))
