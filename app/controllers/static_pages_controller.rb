# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @popular_photos = flickr.interestingness.getList
    unless params[:user_id].blank?
      @photo_feed = flickr.people.getPublicPhotos(user_id: params[:user_id])
    end
  end
end
