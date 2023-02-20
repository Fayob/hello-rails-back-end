class Api::V1::GreetingsController < ApplicationController
  def random
    greetings = Greeting.all
    greeting = greetings.map { |greet| greet.message }
    render json: greeting.sample
  end
end