# Tests the Teenager class.  I'm not recalling the exact mocking syntax, and I'm
#   on a train without wifi (thus unable to research it.) Having to require
#   Message smells a little bit, and I'd much rather mock it.

require 'minitest/autorun'

begin
  require_relative '../teenager'
  require_relative '../message'

  class MessageTest < MiniTest::Unit::TestCase
    def setup
      @questioning = Message.new(message: "Have you see a duck around here?")
      @yelling     = Message.new(message: "I SAID, WATCH OUT!")
      @silence     = Message.new(message: "...")
    end

    def test_questions_arent_silent
      assert !@questioning.silent?
    end

    def test_questions_arent_forceful
      assert !@questioning.forceful?
    end

    def test_questions_are_questioning
      assert @questioning.question?
    end

    def test_yelling_isnt_silent
      assert !@yelling.silent?
    end

    def test_yelling_is_forceful
      assert @yelling.forceful?
    end

    def test_yelling_isnt_questioning
      assert !@yelling.question?
    end

    def test_silence_is_silent
      assert @silence.silent?
    end

    def test_silence_isnt_forceful
      assert !@silence.forceful?
    end

    def test_silence_isnt_questioning
      assert !@silence.question?
    end

  end
end
