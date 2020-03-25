class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :start_date, :end_date, :ongoing, :description, :private, :url, :img_url, :host_id, :tags, :users

  def tags
    @object.tags
  end

  def users
    @object.users
  end

end
