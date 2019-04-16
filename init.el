;; Filename: init.el
;; Author(s): Takafumi Usui
;; E-mail: u.takafumi@gmail.com
;; Description:
;; 
;; ------------------------------------------------------------------------- ;;
;; ELPAでElisp管理
;; ------------------------------------------------------------------------- ;;
(setq package-user-dir "~/Dropbox/Config/emacs/.emacs.d/melpa/")
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
;; ------------------------------------------------------------------------- ;;
;; init-loaderの設定
;; ------------------------------------------------------------------------- ;;
;; ~/.emacs.d/Dropbox/Config/emacs/.emacs.d/melpa以下全てを読みこむ
(let ((default-directory (expand-file-name "~/Dropbox/Config/emacs/.emacs.d/melpa")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/Dropbox/Config/emacs/.emacs.d/inits")

;; ------------------------------------------------------------------------- ;;
;; デフォルトのフレームサイズ
;; ------------------------------------------------------------------------- ;;
(setq default-frame-alist
(append
'(
(top . 0)
(left . 735)
(width . 98)
(height . 150)
)
default-frame-alist))

;; ------------------------------------------------------------------------- ;;
;; フォント
;; Rictyフォントの使用
;; ------------------------------------------------------------------------- ;;
(set-face-attribute 'default nil :family "Ricty" :height 140)
(set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty"))
(setq face-font-rescale-alist '(("Ricty" . 1.00)))

;; ------------------------------------------------------------------------- ;;
;; Pathの引き継ぎ
;; ------------------------------------------------------------------------- ;;
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(exec-path-from-shell-copy-env "PYTHONPATH")
