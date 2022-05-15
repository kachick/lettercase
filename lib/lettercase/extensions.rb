# frozen_string_literal: true

module LetterCase
  module StringExtension
    # @return [String]
    def UPCASE
      upcase
    end

    # @return [String]
    def snakecase
      gsub(/([a-z])([A-Z])/) { [Regexp.last_match(1), Regexp.last_match(2)].join(DELIMITER) }.downcase
    end

    def snake_case
      snakecase
    end

    # @return [String]
    def force_pascalcase
      split(DELIMITER).map(&:capitalize).join
    end

    # @return [String]
    def pascalcase
      gsub(/\w+/, &:force_pascalcase)
    end

    def PascalCase
      pascalcase
    end

    # @return [String]
    def camelcase
      gsub(/\w+/) { |chunk|
        (+'').tap { |s|
          chunk.split(DELIMITER).each_with_index do |word, index|
            s << case index
                 when 0
                   word.downcase
                 else
                   word.force_pascalcase
                 end
          end
        }
      }
    end

    def camelCase
      camelcase
    end
  end

  refine String do
    import_methods StringExtension
  end

  module SymbolExtension
    %i[UPCASE snakecase snake_case force_pascalcase pascalcase PascalCase camelcase camelCase].each do |method_name|
      # define_method can't be used here for Ruby 3.1 import_methods behavior
      module_eval(
        %Q!
          def #{method_name}
            to_s.#{method_name}.to_sym
          end
        !, __FILE__, __LINE__ - 4
      )
    end
  end

  refine Symbol do
    import_methods SymbolExtension
  end
end
