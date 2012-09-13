$VERBOSE = true

require_relative '../lib/lettercase'

p LetterCase.pascalize('letter_case') #=> "LetterCase"

require_relative '../lib/lettercase/ext'

# * basic
p  'LetterCase'.snakecase             #=> "letter_case"
p  'letter_case'.camelcase            #=> "letterCase"
p  'letter_case'.pascalcase           #=> "LetterCase"

# * aliases (method name describes your self)
p  'lettercase'.UPCASE                #=> "LETTERCASE"
p  'LetterCase'.snake_case            #=> "letter_case"
p  'letter_case'.camelCase            #=> "letterCase"
p  'letter_case'.PascalCase           #=> "LetterCase"

# * Symbol too
p  :'letter_case'.PascalCase          #=> :LetterCase

# * can use your stringable classes (must have #to_str method)
class LikeString
  include LetterCase::StringableExtension
  
  def to_str
    'aBc'
  end
end

p LikeString.new.snake_case           #=> "a_bc"
