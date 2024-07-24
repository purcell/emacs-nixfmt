;;; nixfmt.el --- Reformat Nix using nixfmt  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Steve Purcell

;; Author: Steve Purcell <steve@sanityinc.com>
;; Keywords: languages
;; URL: https://github.com/purcell/emacs-nixfmt
;; Package-Requires: ((emacs "24") (reformatter "0.3"))
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Provides commands and a minor mode for easily reformatting Nix code
;; using the external "nixfmt" program.

;; Call `nixfmt-buffer' or `nixfmt-region' as convenient.

;; Enable `nixfmt-on-save-mode' in Nix buffers like this:

;;     (add-hook 'nix-mode-hook 'nixfmt-on-save-mode)

;; or locally to your project with a form in your .dir-locals.el like
;; this:

;;     ((nix-mode
;;       (mode . nixfmt-on-save)))

;; You might like to bind `nixfmt-region' or `nixfmt-buffer' to a key,
;; e.g. with:

;;     (define-key 'nix-mode-map (kbd "C-c C-f") 'nixfmt)

;;; Code:


;; Minor mode and customisation

(require 'reformatter)

(defgroup nixfmt nil
  "Reformat Nix using nixfmt."
  :group 'languages)

(defcustom nixfmt-command "nixfmt"
  "Command used for reformatting."
  :type 'string)


;; Commands for reformatting

;;;###autoload (autoload 'nixfmt-buffer "nixfmt" nil t)
;;;###autoload (autoload 'nixfmt-region "nixfmt" nil t)
;;;###autoload (autoload 'nixfmt-on-save-mode "nixfmt" nil t)
(reformatter-define nixfmt
  :program nixfmt-command
  :lighter " Nixfmt"
  :group 'nixfmt)


(provide 'nixfmt)
;;; nixfmt.el ends here
