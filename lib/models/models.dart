//All categories model

class CategoryModel{
  final String name;
  final String url;

  CategoryModel({this.name, this.url});
}

class FreshProduceModel{
  final String name;
  final String url;
  final String description;
  final int price;

  FreshProduceModel({this.name, this.url, this.description, this.price});
}

class CartItems{
  final String id;
  final String name;
  final int price;
  final int qty;
  final imgUrl;

  CartItems({this.id, this.name, this.price, this.qty, this.imgUrl});
}