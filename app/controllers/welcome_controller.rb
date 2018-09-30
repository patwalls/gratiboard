class WelcomeController < ApplicationController
  def index
    @gratitudes = Gratitude.order(created_at: :desc)
    @email_gratitudes = EmailGratitude.order(created_at: :desc)

    @all_gratitudes = @gratitudes + @email_gratitudes
  end

  def how_it_works
  end
end
