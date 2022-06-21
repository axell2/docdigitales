class WelcomeController < ApplicationController
  def home
    @customers = Customer.all
  end

  def unregistered
  end
end
