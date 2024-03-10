json.extract! user, :id, :code, :name, :lastname, :country, :city, :username, :password, :currency, :balance, :birthday, :email, :phone, :platform, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
