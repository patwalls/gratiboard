class WelcomeController < ApplicationController
  def index
    @gratitudes = Gratitude.all
  end
end
