import 'package:grocery_ui/models/models.dart';

final List<FreshProduceModel> freshProduce = [
  FreshProduceModel(
    name: "Organic Moss",
    description: "Avocados",
    url: "assets/images/avocado.png",
    price: 500,
  ),
  FreshProduceModel(
    name: "Ginger",
    description: "Ginja",
    url: "assets/images/ginger.png",
    price: 700,
  ),
  FreshProduceModel(
    name: "Organic Banana",
    description: "Cion",
    url: "assets/images/bananas.png",
    price: 1000,
  ),
  FreshProduceModel(
    name: "Pepper",
    description: "Pepperish",
    url: "assets/images/pepper.png",
    price: 400,
  ),
  FreshProduceModel(
    name: "Rice",
    description: "Cereals",
    url: "assets/images/rice.png",
    price: 800,
  ),
  FreshProduceModel(
    name: "Sprite",
    description: "Drinks",
    url: "assets/images/sprite.png",
    price: 800,
  ),
  FreshProduceModel(
    name: "Vegetable Ba",
    description: "Vegetables",
    url: "assets/images/vegs_banner.png",
    price: 800,
  ),
  FreshProduceModel(
    name: "Organic Pulses",
    description: "Pulse",
    url: "assets/images/pulses.png",
    price: 8000,
  ),
  FreshProduceModel(
    name: "Fruits",
    description: "Fresh Fruits",
    url: "assets/images/fresh_fruits.png",
    price: 500,
  ),
  FreshProduceModel(
    name: "Organic Apple",
    description: "Apples",
    url: "assets/images/apples.png",
    price: 1200,
  )
];

final List<CategoryModel> categories = [
  CategoryModel(
      name: "Fruits",
      url: "assets/images/banana.svg"

  ),

  CategoryModel(
      name: "Vegetables",
      url: "assets/images/banana.svg"
  ),

  CategoryModel(
      name: "Beverages",
      url: "assets/images/banana.svg"
  ),

  CategoryModel(
      name: "Meats",
      url: "assets/images/banana.svg"
  ),

  CategoryModel(
      name: "Drinks",
      url: "assets/images/banana.svg"

  ),

  CategoryModel(
      name: "Toiletries",
      url: "assets/images/toileteries.svg"
  ),

];


final List<FreshProduceModel> popular_items = [
  FreshProduceModel(
    name: "Noodles",
    description: "Fast Food",
    url: "assets/images/noodles.png",
    price: 500,
  ),
  FreshProduceModel(
    name: "Ginger",
    description: "Ginja",
    url: "assets/images/ginger.png",
    price: 700,
  ),
  FreshProduceModel(
    name: "Organic Banana",
    description: "Cion",
    url: "assets/images/bananas.png",
    price: 1000,
  ),

  FreshProduceModel(
    name: "Bakery",
    description: "Bakery",
    url: "assets/images/bakery.png",
    price: 1000,
  ),

  FreshProduceModel(
    name: "Beef",
    description: "Beef Bone",
    url: "assets/images/beef_bone.png",
    price: 2000,
  ),

  FreshProduceModel(
    name: "Chicken",
    description: "Chicken Meat",
    url: "assets/images/chicken.png",
    price: 4000,
  ),

  FreshProduceModel(
    name: "Coca-Cola",
    description: "Coca-Cola",
    url: "assets/images/coca_cola.png",
    price: 1000,
  ),
  FreshProduceModel(
    name: "Diary",
    description: "Diary Produce",
    url: "assets/images/diary.png",
    price: 1000,
  ),
  FreshProduceModel(
    name: "Organic Juice",
    description: "Juicy",
    url: "assets/images/juice_apple.png",
    price: 800,
  ),
  FreshProduceModel(
    name: "Egg",
    description: "Red Egg",
    url: "assets/images/egg_red.png",
    price: 1000,
  ),
  FreshProduceModel(
    name: "White Egg",
    description: "White Egg",
    url: "assets/images/egg_white.png",
    price: 1000,
  ),
  FreshProduceModel(
    name: "Orange Juice",
    description: "Orange",
    url: "assets/images/juice_orange.png",
    price: 800,
  ),
  FreshProduceModel(
    name: "Oils",
    description: "Heart Oils",
    url: "assets/images/oils.png",
    price: 800,
  ),
  FreshProduceModel(
    name: "Organic Pulses",
    description: "Pulse",
    url: "assets/images/pulses.png",
    price: 8000,
  ),
  FreshProduceModel(
    name: "Fruits",
    description: "Fresh Fruits",
    url: "assets/images/fresh_fruits.png",
    price: 500,
  ),
  FreshProduceModel(
    name: "Organic Apple",
    description: "Apples",
    url: "assets/images/apples.png",
    price: 1200,
  ),

  FreshProduceModel(
    name: "Fish ",
    description: "Meat",
    url: "assets/images/meat_fish.png",
    price: 1200,
  )

];

final List<CartItems> cartItems = [
  CartItems(
    id: '1',
    name: "Pepper",
    price: 200,
    qty: 1,
    imgUrl: "https://images.unsplash.com/photo-1572437926930-cd6a6cd52de4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njl8fHBlcHBlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ),
  CartItems(
      id: '2',
      name: "Rice",
      price: 200,
      qty: 1,
    imgUrl: "https://images.unsplash.com/photo-1592119747782-d8c12c2ea267?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGpvbGxvZiUyMHJpY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ),
  CartItems(
      id: '3',
      name: "Meat",
      price: 200,
      qty: 1,
    imgUrl: "https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVhdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ),
  CartItems(
      id: '4',
      name: "Banana",
      price: 200,
      qty: 1,
    imgUrl: "https://images.unsplash.com/photo-1543218024-57a70143c369?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmFuYW5hfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  )
];