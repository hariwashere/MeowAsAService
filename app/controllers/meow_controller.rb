require 'meow'

class MeowController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get
    render_response
  end

  def post
    render_response
  end

  def render_response
    meow = Meow.new(params[:emotion], params[:repeat].to_i)
    @response = meow.get_response()
  end
end
