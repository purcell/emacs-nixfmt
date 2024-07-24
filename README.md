[![Melpa Status](http://melpa.org/packages/nixfmt-badge.svg)](http://melpa.org/#/nixfmt)
[![Melpa Stable Status](http://stable.melpa.org/packages/nixfmt-badge.svg)](http://stable.melpa.org/#/nixfmt)
[![Build Status](https://github.com/purcell/emacs-nixfmt/actions/workflows/test.yml/badge.svg)](https://github.com/purcell/emacs-nixfmt/actions/workflows/test.yml)
<a href="https://www.patreon.com/sanityinc"><img alt="Support me" src="https://img.shields.io/badge/Support%20Me-%F0%9F%92%97-ff69b4.svg"></a>

nixfmt.el
==============

This Emacs library provides commands and a minor mode for easily reformatting
Nix source code using the [nixfmt][nixfmt] command.

Installation
=============

If you choose not to use one of the convenient
packages in [MELPA][melpa], you'll need to
add the directory containing `nixfmt.el` to your `load-path`, and
then `(require 'nixfmt)`.

Usage
=====

Customise the `nixfmt-command` variable as desired, then call
`nixfmt-buffer` or `nixfmt-region` as convenient.

Enable `nixfmt-on-save-mode` in Nix buffers like this:

```el
(add-hook 'nix-mode-hook 'nixfmt-on-save-mode)
```

or locally to your project with a form in your .dir-locals.el like
this:

```el
((nix-mode
   (mode . nixfmt-on-save)))
```

You might like to bind `nixfmt` or `nixfmt-buffer` to a key,
e.g. with:

```el
(define-key 'nix-mode-map (kbd "C-c C-f") 'nixfmt)
```

[melpa]: http://melpa.org
[nixfmt]: https://github.com/nixos/nixfmt

<hr>

[💝 Support this project and my other Open Source work](https://www.patreon.com/sanityinc)

[💼 LinkedIn profile](https://uk.linkedin.com/in/stevepurcell)

[✍ sanityinc.com](http://www.sanityinc.com/)

[🐦 @sanityinc](https://twitter.com/sanityinc)
