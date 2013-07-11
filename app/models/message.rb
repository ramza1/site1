class Message
  include ActiveAttr::Model
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attribute :name
  attribute :email
  attribute :content
  attribute :priority # type: Integer, default: 0
  attribute :phone_number

  #attr_accessible :name, :email, :content, :phone_number

  validates_presence_of :name
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :content, :maximum => 500
  validates_presence_of :phone_number
end
