class TagSerializer
  include FastJsonapi::ObjectSerializer
  attributes :tag_name
end
