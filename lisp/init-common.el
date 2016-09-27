;;; init-common.el --- common configuration
;;
;; Copyright (C) 2015-2016 nibon7
;;
;; Author: nibon7 <nibon7@aliyun.com>
;; URL: https://github.com/nibon7/dot_emacs
;; Version: 0.1

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; common configuration

;;; Code:


;; disable startup screen
(setq inhibit-startup-screen -1)

;; disable toolbar
(tool-bar-mode -1)

;; enable menubar and toolbar on gui mode
(if window-system
    (progn (menu-bar-mode t)
	   (scroll-bar-mode t))
  (progn (menu-bar-mode -1)
	 (scroll-bar-mode -1)))

;; disable blink cursor
(blink-cursor-mode -1)

;; show the cursor when moving after big movements
(require 'beacon)
(beacon-mode t)

;; disable annoying ring bell
(setq ring-bell-function nil)

;; font lock mode
(global-font-lock-mode t)

;; show line number
(global-linum-mode t)

;; show column number
(column-number-mode t)

;; show matching parens
(show-paren-mode t)

;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)

;; do not backup files
(setq make-backup-files nil)

;; do not creating ##autosave## files
(setq auto-save-default nil)

;; y-or-n-p in short
(fset 'yes-or-no-p 'y-or-n-p)

;; make ibuffer default
(fset 'list-buffers 'ibuffer)

;; use increament search instead
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

;; color theme
(load-theme 'zenburn t)

(provide 'init-common)
;;; init-common.el ends here
