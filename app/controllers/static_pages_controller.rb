require 'flickraw'

class StaticPagesController < ApplicationController
  def index
    FlickRaw.api_key = Figaro.env.FLICKRAW_API_KEY
    FlickRaw.shared_secret = Figaro.env.FLICKRAW_SHARED_SECRET
    flickr = FlickRaw::Flickr.new

    if search_params[:username]
      @username = search_params[:username]
      begin
        id = flickr.people.findByUsername(username: @username).nsid
      rescue
        @user_not_found = true
      else
        @photos = flickr.people.getPublicPhotos(user_id: id).photo
      end
    end
  end


  private

  def search_params
    params.fetch(:search, {}).permit(:username)
  end
end
