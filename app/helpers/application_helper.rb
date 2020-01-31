# frozen_string_literal: true

module ApplicationHelper
  def flickr
    api_key = Rails.application.credentials.flickr[:api_key]
    secret = Rails.application.credentials.flickr[:secret]
    flickr = Flickr.new(api_key, secret)
  end

  def image_url(photo)
    "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg"
  end
end
