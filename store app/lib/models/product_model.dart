class ProductModel {
  final int id;
  final String title, category, image, description;
  final double price;
  final Rating rating;
  ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      category: jsonData['category'],
      image: jsonData['image'],
      description: jsonData['description'],
      price: jsonData['price'],
      rating: Rating.formJson(jsonData['rating']),
    );
  }
}

class Rating {
  final double rate;
  final int count;

  Rating({required this.count, required this.rate});
  factory Rating.formJson(jsonData) {
    return (Rating(
      count: jsonData['count'],
      rate: jsonData['rate'],
    ));
  }
}
