require 'teenager'
require 'message'

Shoes.app(width:300, height: 450) do
  background whitesmoke

  stack(margin: 12) do
    title "Let's talk to a teenager!",
          align: "center",
          font:  "Arial"

    flow do
      @message = edit_line(margin_left: 10, width: 180)
      button("Say it!", margin_left: 5) do
        say_to_teen(@message.text)
        @message.text = ''
      end
    end
  end

  stack do
    @teen_says = stack(margin: 12) { para }
  end

  def say_to_teen(message)
    @teen_says.clear do
      stack do
        print_my_message(message)
        print_teenagers_response(message)
      end
    end
  end

  def print_teenagers_response(message)
    title strong(Teenager.hey(message))
  end

  def print_my_message(message)
    string = message.lstrip.empty? ? "..." : message
    title strong(em(string))
  end
end








