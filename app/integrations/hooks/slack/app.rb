class Hooks::Slack::App < Hooks::Core::Base
  include Hooks::Slack::EventHandler

  string :url_webhook, :required => true, :label => 'Webhook URL'
end