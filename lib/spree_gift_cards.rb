require 'spree_core'

module SpreeGiftCards
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env == "production" ? require(c) : load(c)
      end

      Spree::User.has_many :purchased_gift_cards, :class_name => "GiftCard", :foreign_key => :sender_id
      Spree::User.has_many :my_gift_cards, :class_name => "GiftCard", :foreign_key => :recipient_id
      Spree::LineItem.has_one :gift_card
    end

    config.to_prepare &method(:activate).to_proc
  end
end
