class FixNamingIssueWithSc < ActiveRecord::Migration
  def self.up
    rename_column :gift_cards, :store_credits_id, :store_credit_id
  end

  def self.down
    rename_column :gift_cards, :store_credit_id, :store_credit2_id
  end
end
