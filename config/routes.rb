Rails.application.routes.draw do
  #prodcuts
  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  get "/products/:id", controller: "products", action: "show"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"

  #suppliers
  get "/suppliers", controller: "suppliers", action: "index"
  post "/suppliers", controller: "suppliers", action: "create"
  get "/suppliers/:id", controller: "suppliers", action: "show"
  patch "/suppliers/:id", controller: "suppliers", action: "update"
  delete "/suppliers/:id", controller: "suppliers", action: "destroy"

end
