Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"
  get "/one_product", controller: "products", action: "one_product"
  get "/product_query", controller: "products", action: "product_query"
  get "/product_url/:product_id", controller: "products", action: "product_query"
  get ""
end
