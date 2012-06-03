module FacebookPageNewsHelper
  def fb_image_url_for (graph_object_id)
    url = nil
    begin
      photo = FbGraph::Photo.new(graph_object_id).fetch
      url = photo.images[0].source
    rescue Exception => e
    end
    url
  end

  def clean_video_url (video_url)
    video_url.gsub("&autoplay=1","")
  end
end
