module Hooks
  class InboxApp < ApplicationRecord
    serialize :settings, JSON

    validates :inbox_id, presence: true
    validates :agent_id, presence: true
    validates :account_id, presence: true

    belongs_to :inbox
    belongs_to :agent
    belongs_to :account 
  end
end