class SpreeGiftCardsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_form_right , "admin/products/gift_card_fields"
  
  insert_after :sidebar do
    %(
    <%= link_to t("spree_gift_card.buy_gift_card"), new_gift_card_path, :class => 'button' %>
    )
  end
  
  insert_after :account_my_orders, :partial => 'users/gift_cards'
end
