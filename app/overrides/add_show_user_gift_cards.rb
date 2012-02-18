Deface::Override.new(:virtual_path => "users/show",
                     :name => "converted_account_my_orders_408295644",
                     :insert_after => "[data-hook='account_my_orders'], #account_my_orders[data-hook]",
                     :partial => "users/gift_cards",
                     :disabled => false)