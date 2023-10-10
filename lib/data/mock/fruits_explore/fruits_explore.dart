class FruitsExplore {
  final String title;
  final String quality;
  final String price;
  final String img;
  FruitsExplore({required this.title, required this.quality, required this.price, required this.img});
}

List<FruitsExplore> listFruitsExplore = [
  FruitsExplore(title: 'Strawberry', quality: '4 kg', price: '\$2', img: 'assets/png/strawberry.png'),
  FruitsExplore(title: 'Banana', quality: '2 kg', price: '\$1', img: 'assets/png/banana.png'),
  FruitsExplore(title: 'Kiwifruit', quality: '4 kg', price: '\$2', img: 'assets/png/kiwifruit.png'),
  FruitsExplore(title: 'Orange', quality: '2 kg', price: '\$2', img: 'assets/png/orange.png'),
];