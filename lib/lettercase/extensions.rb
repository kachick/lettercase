# Copyright (C) 2012  Kenichi Kamiya

module LetterCase

  module StringExtension
    def UPCASE
      upcase
    end

    def snakecase
      gsub(/([a-z])([A-Z])/) {[$1, $2].join DELIMITER}.downcase
    end
    
    alias_method :snake_case, :snakecase
    
    def force_pascalcase
      split(DELIMITER).map(&:capitalize).join
    end

    def pascalcase
      gsub(/\w+/) {|s|s.extend(StringExtension).force_pascalcase}
    end
    
    alias_method :PascalCase, :pascalcase
    
    def camelcase
      gsub(/\w+/) {|chunk|
        ''.tap {|s|
          chunk.split(DELIMITER).each_with_index do |word, index|
            s << case index
            when 0
              word.downcase
            else
              word.extend(StringExtension).force_pascalcase
            end
          end
        }
      }
    end
    
    alias_method :camelCase, :camelcase
  end

  module SymbolExtension
    StringExtension.instance_methods.each do |method|
      define_method method do
        to_s.__send__(method).to_sym
      end
    end
  end

  module StringableExtension
    StringExtension.instance_methods.each do |method|
      define_method method do
        to_str.__send__ method
      end
    end
  end

end