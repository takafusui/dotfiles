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
(require 'use-package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")
	)
      )

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
(left . 990)
(width . 100)
(height . 200)
)
default-frame-alist))

;; ------------------------------------------------------------------------- ;;
;; フォント
;; ------------------------------------------------------------------------- ;;
;; (set-face-attribute 'default nil :family "Ricty Diminished" :height 125)
;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty Diminished"))
;; (setq face-font-rescale-alist '(("Ricty Diminished" . 1.00)))
(set-frame-font "Source Han Code JP R")
;; The value is in 1/10pt, so 100 will give you 10pt, etc.
(set-face-attribute 'default nil :height 105)

;; ------------------------------------------------------------------------- ;;
;; ediff
;; ------------------------------------------------------------------------- ;;
;; コントロール用のバッファを同一フレーム内に表示
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; diffのバッファを上下ではなく左右に並べる
(setq ediff-split-window-function 'split-window-horizontally)

;; ------------------------------------------------------------------------- ;;
;; Pathの引き継ぎ
;; ------------------------------------------------------------------------- ;;
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
;; (exec-path-from-shell-copy-env "PYTHONPATH")

;; ------------------------------------------------------------------------- ;;
;; Display boundaries
;; ------------------------------------------------------------------------- ;;
(global-display-fill-column-indicator-mode 1)
(setq-default display-fill-column-indicator-column 79)

;; ------------------------------------------------------------------------- ;;
;; Other customizations provided by emacs
;; ------------------------------------------------------------------------- ;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "834cbeacb6837f3ddca4a1a7b19b1af3834f36a701e8b15b628cad3d85c970ff" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "0f0a4dca8bb029dc5139f447ff25bc3c18d31872c30a46d03c6bbc706ded3586" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" default))
 '(flycheck-checker-error-threshold 1000)
 '(irony-additional-clang-options '("-std=c++11"))
 '(package-selected-packages
   '(win-switch company-box python rainbow-delimiters lsp-ivy gams-mode pyvenv company-prescient ivy-prescient ivy-rich package-utils fillcode counsel company-math lsp-python-ms impatient-mode lsp-jedi flycheck use-package lsp-ui lsp-mode doom-modeline doom-themes ivy-xref smart-jump company-quickhelp bind-key ibuffer-vc markdown-mode flymake-yaml yaml-mode yascroll undo-tree switch-window swiper smartparens smart-cursor-color shell-pop redo+ quick-buffer-switch pyenv-mode magit isearch-dabbrev ipython init-loader ido-vertical-mode ido-ubiquitous ido-occasional ido-migemo hydra hiwin highlight-blocks fuzzy exec-path-from-shell easy-repeat direx dired-toggle dired-k company-jedi auto-complete-auctex auto-compile auctex-latexmk ace-jump-zap)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-bar ((t (:background "#6272a4")))))
