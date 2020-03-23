class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :start_date, :end_date, :ongoing, :description, :private, :url, :img_url, :host_id
end
