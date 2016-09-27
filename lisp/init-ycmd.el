;;; init-ycmd.el --- ycmd configuration
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

;; ycmd configuration

;;; Code:

(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)

(require 'company-ycmd)
(company-ycmd-setup)

(require 'flycheck-ycmd)
(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-ycmd-setup)

(set-variable 'ycmd-global-config (expand-file-name ".ycm_extra_conf.py" (getenv "HOME")))
(set-variable 'ycmd-server-command '("python2.7" "/home/nibon7/.vim/bundle/YouCompleteMe/third_party/ycmd/ycmd"))

(provide 'init-ycmd)
;;; init-ycmd.el ends here
