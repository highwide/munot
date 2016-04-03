class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    unmo = Unmo.new("ぷろと")
    ActionCable.server.broadcast(
      'room_channel',
      message: render_message(
        message,
        { name: unmo.name, reply: unmo.dialogue(message) }
      )
    )
  end

  private

  def render_message(message, bot = nil)
    ApplicationController.renderer.render(
      partial: 'messages/message',
      locals: { message: message, bot: bot }
    )
  end
end
