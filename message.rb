class Message
  def initialize(options = {})
    @message = options[:message]
  end

  def silent?
    test_for_silence(@message)
  end

  def forceful?
    @message == @message.upcase && !test_for_silence(@message)
  end

  def question?
    @message.end_with?('?')
  end

  private
  def test_for_silence(message)
    message == "..." || message.lstrip.empty?
  end
end