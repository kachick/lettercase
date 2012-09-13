lettercase
==========

[![Build Status](https://secure.travis-ci.org/kachick/lettercase.png)](http://travis-ci.org/kachick/lettercase)

Description
-----------

Convert some letter cases around programming.

Features
--------

* snake_case
* camelCase
* PascalCase

* PureRuby :)

Usage
-----

### Introduction

```ruby
require 'lettercase'

LetterCase.pascalize 'letter_case' #=> "LetterCase"

require 'lettercase/core_ext'

'LetterCase'.snakecase             #=> "letter_case"
'letter_case'.camelcase            #=> "letterCase"
'letter_case'.pascalcase           #=> "LetterCase"

# Aliases: Method name describes to self role
'lettercase'.UPCASE                #=> "LETTERCASE"
'LetterCase'.snake_case            #=> "letter_case"
'letter_case'.camelCase            #=> "letterCase"
'letter_case'.PascalCase           #=> "LetterCase"
```

Requirements
-------------

* Ruby - [1.9.2 or later](http://travis-ci.org/#!/kachick/lettercase)

Install
-------

```bash
$ gem install lettercase
```

Link
----

* [code](https://github.com/kachick/lettercase)
* [API](http://kachick.github.com/lettercase/yard/frames.html)
* [issues](https://github.com/kachick/lettercase/issues)
* [CI](http://travis-ci.org/#!/kachick/lettercase)
* [gem](https://rubygems.org/gems/lettercase)

License
--------

The MIT X11 License  
Copyright (C) 2012 Kenichi Kamiya  
See the file LICENSE for further details.
