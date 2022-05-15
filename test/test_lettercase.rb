# frozen_string_literal: true
require_relative 'helper'

class TestLetterCaseWithRefinement < Test::Unit::TestCase
  using LetterCase

  def test_symbol_included_line
    sample = :' a tiny library :) ... reAly?  '

    assert_equal(:' a tiny library :) ... re_aly?  ', sample.snake_case)
    assert_equal(:' a tiny library :) ... realy?  ', sample.force_pascalcase)
    assert_equal(:' A Tiny Library :) ... Realy?  ', sample.PascalCase)
    assert_equal(:' a tiny library :) ... realy?  ', sample.camelCase)
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
    sample = :' a tiny library :) ... reAly?  '

    assert_equal(:' a tiny library :) ... re_aly?  ', LetterCase.snakelize(sample))
    assert_equal(:' a tiny library :) ... realy?  ', LetterCase.force_pascalize(sample))
    assert_equal(:' A Tiny Library :) ... Realy?  ', LetterCase.pascalize(sample))
    assert_equal(:' a tiny library :) ... realy?  ', LetterCase.camelize(sample))
  end
end
