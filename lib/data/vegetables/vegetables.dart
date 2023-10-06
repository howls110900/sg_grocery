class Vegetables {
  final String title;
  final String quality;
  final String price;
  final String img;
  Vegetables({required this.title, required this.quality, required this.price, required this.img});
}

List<Vegetables> listVegetables = [
  Vegetables(title: 'Tomato', quality: '1 kg', price: '\$2', img: 'assets/png/tomato.png'),
  Vegetables(title: 'Potato', quality: '1 kg', price: '\$1', img: 'assets/png/potato_2.png'),
  Vegetables(title: 'Onion', quality: '1 kg', price: '\$2', img: 'assets/png/potato_3.png'),
  Vegetables(title: 'Lemon', quality: '1 kg', price: '\$2', img: 'assets/png/lemon.png'),
];