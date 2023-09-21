class GreetingsController < ApplicationController
  def index
    @greeting = Greeting.all.sample
    render json: { message: @greeting.name }, status: :ok
  end
end
