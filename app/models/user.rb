class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :name, type: String
  field :lastname, type: String
  field :country, type: String
  field :city, type: String
  field :username, type: String
  field :password, type: String
  field :currency, type: String
  field :balance, type: Float
  field :birthday, type: Date
  field :email, type: String
  field :phone, type: String
  field :platform, type: String
  field :status, type: String

  validates :name, :lastname, :email, :platform, presence: true
  validates :email, uniqueness: { scope: :platform, message: "debe ser único en la plataforma" }
end
