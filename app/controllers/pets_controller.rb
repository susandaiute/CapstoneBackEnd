class PetsController < ApplicationController
  require 'net/http'
  KEY = ENV['PETFINDER_KEY'];
  def index
    url = URI.parse('http://api.petfinder.com/pet.find?key=' + KEY + '&animal=dog&breed=Labrador+Retriever&output=full&location=02184&format=json&distance=100')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) do |http|
      http.request(req)
    end
    render json: res.body
  end
end
