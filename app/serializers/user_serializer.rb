class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :img_url
end
