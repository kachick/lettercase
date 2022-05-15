# frozen_string_literal: true

require_relative 'stringextension'

module LetterCase
  module SymbolExtension
    StringExtension.instance_methods.each do |method|
      define_method method do
        to_s.__send__(method).to_sym
      end
    end
  end
end
