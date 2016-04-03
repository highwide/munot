class Unmo
  attr_accessor :name

  def initialize(name)
    @name = name
    @responder = rand(2).even? ? RandomResponder.new('Random') : WhatResponder.new('What')
  end

  def dialogue(input)
    @responder.response(input)
  end

  def responder_name
    @responder.name
  end
end
