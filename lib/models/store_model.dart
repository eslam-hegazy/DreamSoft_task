class StoreModel {
  final String image;
  final String title;

  StoreModel({
    required this.image,
    required this.title,
  });
  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        image: json['image'],
        title: json['title'],
      );
  Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
      };
}
