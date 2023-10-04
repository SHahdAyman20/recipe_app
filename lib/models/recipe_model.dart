class RecipeModel {
  String name;
  String image;
  String description;

  RecipeModel({
    required this.name,
    required this.image,
    required this.description,
  });

  factory RecipeModel.fromJson(json) {
    return RecipeModel(
      name: json['recipe']['label'],
      image: json['recipe']['image'],
      description: json['recipe']['ingredientLines'],
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'name: $name image: $image ';
  }

}