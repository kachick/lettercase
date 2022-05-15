# frozen_string_literal: true

module LetterCase
  class << self
    {
      snakelize: :snakecase,
      force_pascalize: :force_pascalcase,
      pascalize: :pascalcase,
      camelize: :camelcase
    }.each_pair do |via, after|
      define_method via do |stringlike|
        ret = stringlike.to_s.dup.extend(StringExtension).__send__(after)
        stringlike.kind_of?(Symbol) ? ret.to_sym : ret
      end
    end
  end
end
