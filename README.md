lettercase
==========

- _**This repository is archived**_
- _**No longer maintained**_
- _**All versions have been removed from <https://rubygems.org> to free up valuable namespace for other developers**_.

[![Build Status](https://github.com/kachick/lettercase/actions/workflows/test_behaviors.yml/badge.svg?branch=main)](https://github.com/kachick/lettercase/actions/workflows/test_behaviors.yml/?branch=main)

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

using LetterCase

'LetterCase'.snakecase             #=> "letter_case"
'letter_case'.camelcase            #=> "letterCase"
'letter_case'.pascalcase           #=> "LetterCase"

# Aliases: Method name describes to self role
'lettercase'.UPCASE                #=> "LETTERCASE"
'LetterCase'.snake_case            #=> "letter_case"
'letter_case'.camelCase            #=> "letterCase"
'letter_case'.PascalCase           #=> "LetterCase"
```

