class Food {
  int id;
  String image;
  String name;

  Food({
    required this.id,
    required this.image,
    required this.name,
  });
}

String imageUrl1 = '';
String imageUrl2 = '';
String imageUrl3 = '';
String imageUrl4 = '';

final dummyFoods = [
  Food(id: 1, image: imageUrl1, name: 'Skepik'),
  Food(id: 2, image: imageUrl2, name: 'Giros')
];
