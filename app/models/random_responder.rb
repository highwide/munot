class RandomResponder < Responder
  def initialize(name)
    super
    @responses = %w(今日はさむいね チョコ食べたい 昨日10円拾った)
  end

  def response(input)
    @responses[rand(@responses.size)]
  end
end
