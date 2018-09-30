class WelcomeController < ApplicationController
  def index
    @gratitudes = Gratitude.order(created_at: :desc).limit(100)
    @email_gratitudes = EmailGratitude.order(created_at: :desc).limit(100)

    @all_gratitudes = @gratitudes + @email_gratitudes

    @all_gratitudes.sort! { |a, b|  b.created_at <=> a.created_at }
  end

  def how_it_works
  end
end
