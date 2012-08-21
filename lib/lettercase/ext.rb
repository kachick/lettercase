require_relative 'stringextension'
require_relative 'symbolextension'

class String

  include LetterCase::StringExtension

end

class Symbol

  include LetterCase::SymbolExtension

end