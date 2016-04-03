class Screen
  def chat
    proto = Unmo.new("proto")
    while true
      print("> ")
      input = gets.chomp
      break if input == ""

      puts prompt(proto) + proto.dialogue(input)
    end
  end

  private

  def prompt(unmo)
    "#{unmo.name}: #{unmo.responder_name}> "
  end

end
