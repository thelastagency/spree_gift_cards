class AddSenderNameToGiftCard < ActiveRecord::Migration
  def self.up
    add_column :gift_cards, :sender_name, :string  
    add_column :gift_cards, :recipient_id, :int
    rename_column :gift_cards, :user_id, :sender_id
    add_column :gift_cards, :store_credits_id, :int
  end

  def self.down
    remove_column :gift_cards, :sender_name
    remove_column :gift_cards, :recipient_id
    rename_column :gift_cards, :sender_id, :user_id
    remove_column :gift_cards, :store_credits_id
  end
end
