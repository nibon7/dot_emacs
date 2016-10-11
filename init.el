;;; init.el --- main configuration
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

;; main configuration

;;; Code:

(defvar root-directory (file-name-directory load-file-name)
  "The root directory of the configuration.")

(defvar home-directory (getenv "HOME")
  "Home directory")

(add-to-list 'load-path  (expand-file-name "lisp" root-directory))

(when (version< emacs-version "24.4")
  (error "GNU Emacs 24.4 or later required, but you're running %s" emacs-version))

(require 'init-package)
(require 'init-common)
(require 'init-company)
(require 'init-ycmd)
(require 'init-c)
(require 'init-org)
(require 'init-git)
;;; init.el ends here
