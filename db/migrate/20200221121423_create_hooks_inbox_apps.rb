class CreateHooksInboxApps < ActiveRecord::Migration[6.0]
  def change
    create_table :hooks_inbox_apps do |t|
      t.integer :inbox_id
      t.integer :agent_id
      t.integer :account_id
      t.string :app_slug
      t.string :status
      t.text :settings
      t.timestamps
    end
  end
end
