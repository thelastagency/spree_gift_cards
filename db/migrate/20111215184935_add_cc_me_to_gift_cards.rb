class AddCcMeToGiftCards < ActiveRecord::Migration
  def self.up
    add_column :spree_gift_cards, :cc_me, :boolean
  end

  def self.down
    remove_column :spree_gift_cards, :cc_me
  end
end
