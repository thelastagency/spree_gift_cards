OrderMailer.class_eval do
  def gift_card_email(card, order)
    @gift_card = card
    @order = order
    puts '********'
    puts card.sender || '***'
    puts card.sender.email || '***'
    puts card.cc_me || '***'
    puts '********'
    cc = (card.sender.email if card.cc_me) || ''
    subject = t('spree_gift_card.messages.email_subject', :site => Spree::Config[:site_url], :sender => card.sender_name)
    @gift_card.update_attribute(:sent_at, Time.now)
    mail(:to => card.email, :cc => cc, :subject => subject)
  end
end
