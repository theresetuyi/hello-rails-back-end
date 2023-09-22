class RootController < ApplicationController
  def index
    random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting: random_greeting&.name }
  end
end
