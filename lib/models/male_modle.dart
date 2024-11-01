class MealModel {
  int id;
  String name;
  String description;
  String image;
  double price;
  int quantity = 1;
  MealModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });
}
