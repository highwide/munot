class Message
  include ActiveModel::Model
  attr_accessor :content

  def initialize(name)
    @content = content
  end
end
