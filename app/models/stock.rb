class Stock < ApplicationRecord


  # def self.new_lookup(company)
  #
  #   secret_key = Rails.application.credentials.iex_cloud[:secret_key]
  #   public_key = Rails.application.credentials.iex_cloud[:public_key]
  #   client = IEX::Api::Client.new(
  #     secret_token: secret_key,
  #     publishable_token: public_key,
  #     endpoint: 'https://cloud.iexapis.com/v1'
  #   )
  #   return client.price(company)
  #
  # end

  has_many :user_stocks
  has_many :users, through: :user_stocks

  validates :name, :ticker, presence: true

  def self.new_lookup(company)
    client = Stock.find_by(ticker: company)
    return client
  end

end
