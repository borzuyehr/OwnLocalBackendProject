
class Business
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
end
