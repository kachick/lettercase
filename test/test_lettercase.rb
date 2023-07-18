# frozen_string_literal: true
require_relative 'helper'

class TestLetterCaseWithRefinement < Test::Unit::TestCase
  using LetterCase

  def test_symbol_included_line
    sample = :' a tiny library :) ... reAlly?  '

    assert_equal(:' a tiny library :) ... re_ally?  ', sample.snake_case)
    assert_equal(:' a tiny library :) ... really?  ', sample.force_pascalcase)
    assert_equal(:' A Tiny Library :) ... Really?  ', sample.PascalCase)
    assert_equal(:' a tiny library :) ... really?  ', sample.camelCase)
  end

  def test_method_name_like
    sample = 'method_name_like'

    assert_equal('method_name_like', sample.snake_case)
    assert_equal('MethodNameLike', sample.force_pascalcase)
    assert_equal('MethodNameLike', sample.PascalCase)
    assert_equal('methodNameLike', sample.camelCase)
  end
end

class TestLetterCaseModuleMethods < Test::Unit::TestCase
  def test_symbol_included_line
    sample = :' a tiny library :) ... reAlly?  '

    assert_equal(:' a tiny library :) ... re_ally?  ', LetterCase.snakelize(sample))
    assert_equal(:' a tiny library :) ... really?  ', LetterCase.force_pascalize(sample))
    assert_equal(:' A Tiny Library :) ... Really?  ', LetterCase.pascalize(sample))
    assert_equal(:' a tiny library :) ... really?  ', LetterCase.camelize(sample))
  end
end
