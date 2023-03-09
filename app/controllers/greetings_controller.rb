class GreetingsController < ApplicationController
  require 'net/http'

  def hello
    search_params = params[:name]

    uri = URI("http://localhost:5001/api/search?searchParams=#{search_params}")
    response = Net::HTTP.get(uri)

    @results = JSON.parse(response)
    render :hello
  end
end
