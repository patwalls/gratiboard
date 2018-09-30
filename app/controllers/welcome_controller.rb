class WelcomeController < ApplicationController
  def index
    @gratitudes = Gratitude.all
    @email_gratitudes = EmailGratitude.all

    @all_gratitudes = @gratitudes + @email_gratitudes
  end

  def how_it_works
  end
end
