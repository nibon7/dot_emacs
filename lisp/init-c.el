;;; init-c.el --- c code configuration
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

;; c code configuration

;;; Code:

(require 'clang-format)

(global-set-key (kbd "C-M-f") 'clang-format-buffer)

(set-variable 'clang-format-style "Google")

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (setq c-set-style "k&r"
		  c-basic-offset 4)
	    (c-set-offset 'substatement-open 0)))

(provide 'init-c)
;;; init-c.el ends here
