require 'rails_helper'

module Hooks
  RSpec.describe InboxApp, type: :model do
    it { is_expected.to validate_presence_of(:inbox_id) }
    it { is_expected.to validate_presence_of(:account_id) }
    it { is_expected.to validate_presence_of(:agent_id) }
  end
end