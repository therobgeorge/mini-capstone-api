

# Supplier.create!([
#   {name: "Triple Crown Records", email: "triplecrown@gmail.com", phone_number: "555-555-5555"},
#   {name: "Count Your Lucky Stars", email: "cyls@gamil.com", phone_number: "231-555-3333"},
#   {name: "Top Shelf", email: "topshelf@gamil.com", phone_number: "777-888-9999"}
# ])

categories = Category.create!([
  {
    name: "Emo"
  },
  {
    name: "Pop"
  },
  {
    name: "Post Harcore"
  }
])


# Product.create!([
#   {name: "Covet - Efflorece", price: "20.0", image_url: "https://s9.limitedrun.com/images/1323888/TCR-03218-1_MOCKUP.jpg", description: "On red with gold splatter. 2nd pressing limited to 500", quantity: nil, supplier_id: 3},
#   {name: "Jetty Bones - Crucial States/Old Woman", price: "1000.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTddAIM2dWxNBhSsQjt0nbDwWHLWQ-MkfFxpg&usqp=CAU", description: "rsd exclusive pressing", quantity: nil, supplier_id: 3},
#   {name: "Kero Kero Bonito - Bonito Generation", price: "30.0", image_url: "https://i.redd.it/cc1kxg43wba21.jpg", description: "on blue swirl limited to 750", quantity: 3, supplier_id: 2},
#   {name: "Jetty Bones - Push Back", price: "12.0", image_url: nil, description: "its a thing", quantity: 2, supplier_id: 2},
#   {name: "Jetty Bones - Push Back", price: "18.0", image_url: "https://target.scene7.com/is/image/Target/GUEST_e7d5e77a-14a9-4771-8098-dcb61b91c817?wid=488&hei=488&fmt=pjpeg", description: "On clear w/ orange splatter limited to 250", quantity: nil, supplier_id: 1},
#   {name: "Taylor Swift - 1989", price: "1000.0", image_url: "https://upload.wikimedia.org/wikipedia/en/f/f6/Taylor_Swift_-_1989.png", description: "rsd exclusive pressing on clear/pink. Individually numbered limited to 5,000", quantity: nil, supplier_id: 1},
#   {name: "La Dispute - Vancouver", price: "150.0", image_url: "https://www.popsike.com/pix/20110721/220816815518.jpg", description: "on white with pink splatter. limited to 500", quantity: nil, supplier_id: 1}
# ])


# Image.create!([
#   {product_id: 3, url: "https://s9.limitedrun.com/images/1323888/TCR-03218-1_MOCKUP.jpg"}, 
#   {product_id: 6, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTddAIM2dWxNBhSsQjt0nbDwWHLWQ-MkfFxpg&usqp=CAU"}, 
#   {product_id: 7, url: "https://i.redd.it/cc1kxg43wba21.jpg"},
#   {product_id: 2, url: "https://target.scene7.com/is/image/Target/GUEST_e7d5e77a-14a9-4771-8098-dcb61b91c817?wid=488&hei=488&fmt=pjpeg"},
#   {product_id: 1, url: "https://upload.wikimedia.org/wikipedia/en/f/f6/Taylor_Swift_-_1989.png"},
#   {product_id: 4, url: "https://www.popsike.com/pix/20110721/220816815518.jpg"}
# ])