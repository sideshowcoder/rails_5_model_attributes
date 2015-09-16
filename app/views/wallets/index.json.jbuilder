json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :title
  json.url wallet_url(wallet, format: :json)
end
