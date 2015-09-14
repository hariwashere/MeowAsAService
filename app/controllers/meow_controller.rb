require 'meow'

class MeowController < ApplicationController
  def get
    meow = Meow.new(params[:emotion], params[:repeat].to_i)
    @response = meow.get_response()
  end
end
