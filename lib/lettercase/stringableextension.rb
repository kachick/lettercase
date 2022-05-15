# frozen_string_literal: true

require_relative 'stringextension'

module LetterCase
  module StringableExtension
    StringExtension.instance_methods.each do |method|
      define_method method do
        to_str.__send__(method)
      end
    end
  end
end
