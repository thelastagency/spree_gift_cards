OrderMailer.class_eval do
  def gift_card_email(card, order)
    @gift_card = card
    @order = order
    subject = t('spree_gift_card.messages.email_subject', :site => Spree::Config[:site_url], :sender => card.sender_name)
    @gift_card.update_attribute(:sent_at, Time.now)
    mail(:to => card.email, :subject => subject)
  end
end
