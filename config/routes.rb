Rails.application.routes.draw do
  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  get "/products/:id", controller: "products", action: "show"
end
