lettercase
==========

[![Build Status]](https://github.com/kachick/lettercase/actions/workflows/test_behaviors.yml/badge.svg?branch=main)
[![Gem Version](https://badge.fury.io/rb/lettercase.png)](http://badge.fury.io/rb/lettercase)

Description
-----------

Convert some letter cases around programming.

Features
--------

* snake_case
* camelCase
* PascalCase

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

* Ruby - 3.1 or later

Install
-------

```bash
$ gem install lettercase
```

License
--------

The MIT X11 License
Copyright (C) 2012 Kenichi Kamiya
See the file LICENSE for further details.
