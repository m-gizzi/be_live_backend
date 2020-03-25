class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :start_date, :end_date, :ongoing, :description, :private, :url, :img_url, :host, :tags, :users
  has_many :tags, through: :eventsTags
  has_many :users, through: :rsvps

  def tags
    @object.tags
  end

  def users
    @object.users
  end

  def host
    @object.host
  end

end
