class StaticPagesController < ApplicationController

  def home
    @photos = []
    if username = params[:username]
      user_id = flickr.people.findByUsername(username: username).id
      @photos = flickr.people.getPublicPhotos(user_id: user_id)
    end
  end
end
