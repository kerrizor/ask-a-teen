class Teenager
  def self.hey(msg)
    message = Message.new(message: msg)

    return case
           when message.silent?
             'Fine. Be that way!'
           when message.forceful?
             'Woah, chill out!'
           when  message.question?
             'Sure.'
           else
             'Whatever.'
           end
  end
end