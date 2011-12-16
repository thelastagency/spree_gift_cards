UsersController.class_eval do
  after_filter :register_gift_card, :only => :create

  private

  def register_gift_card
    return if session[:gift_card].nil?
    redirect_to confirm_gift_card_url(session[:gift_card], :host => Spree::Config[:site_url]) and return
  end
end
