class StaticpagesController < ApplicationController

  def home
  	@shops = Shop.all.limit(10)
  end

  def terms_and_conditions
  end

  def about
    @disable_nav_and_footer = true
  end

  def pricing

  end

  def thankyou

  end

  def landingpage

  end
  def contact
  end
  def faq
    
  end
  
end
