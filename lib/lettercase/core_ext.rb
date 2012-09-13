require_relative '../lettercase'

class String

  include LetterCase::StringExtension

end

class Symbol

  include LetterCase::SymbolExtension

end
