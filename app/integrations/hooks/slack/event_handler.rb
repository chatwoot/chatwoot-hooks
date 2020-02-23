module Hooks::Slack::EventHandler
  def message_created
    # Take webhook url for inbox_app_config
    # trigger payload to this url
    p "Message created"
  end
end