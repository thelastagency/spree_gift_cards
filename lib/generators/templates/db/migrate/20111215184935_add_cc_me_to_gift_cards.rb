class AddCcMeToGiftCards < ActiveRecord::Migration
  def self.up
    add_column :gift_cards, :cc_me, :boolean
  end

  def self.down
    remove_column :gift_cards, :cc_me
  end
end
