# Tests the Teenager class.  I'm not recalling the exact mocking syntax, and I'm
#   on a train without wifi (thus unable to research it.) Having to require
#   Message smells a little bit, and I'd much rather mock it.

require 'minitest/autorun'

begin
  require_relative '../teenager'
  require_relative '../message'

  class TeenagerTest < MiniTest::Unit::TestCase
    def test_stating_something
      assert_equal 'Whatever.', Teenager.hey('Tom-ay-to, tom-aaaah-to.')
    end

    def test_shouting
      assert_equal 'Woah, chill out!', Teenager.hey('WATCH OUT!')
    end

    def test_asking_a_question
      assert_equal 'Sure.', Teenager.hey('Does this cryogenic chamber make me look fat?')
    end

    def test_talking_forcefully
      assert_equal 'Whatever.', Teenager.hey("Let's go make out behind the gym!")
    end

    def test_using_acronyms_in_regular_speech
      assert_equal 'Whatever.', Teenager.hey("It's OK if you don't want to go to the DMV.")
    end

    def test_forceful_questions
      assert_equal 'Woah, chill out!', Teenager.hey('WHAT THE HELL WERE YOU THINKING?')
    end

    def test_shouting_numbers
      assert_equal 'Woah, chill out!', Teenager.hey('1, 2, 3 GO!')
    end

    def test_shouting_with_special_characters
      assert_equal 'Woah, chill out!', Teenager.hey('ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!')
    end

    def test_shouting_with_no_exclamation_mark
      assert_equal 'Woah, chill out!', Teenager.hey('I HATE YOU')
    end

    def test_statement_containing_question_mark
      assert_equal 'Whatever.', Teenager.hey('Ending with ? means a question.')
    end

    def test_prattling_on
      assert_equal 'Sure.', Teenager.hey("Wait! Hang on. Are you going to be OK?")
    end

    def test_silence
      assert_equal 'Fine. Be that way!', Teenager.hey('')
    end

    def test_more_silence
      assert_equal 'Fine. Be that way!', Teenager.hey('...')
    end

    def test_prolonged_silence
      assert_equal 'Fine. Be that way!', Teenager.hey('    ')
    end
  end
end
