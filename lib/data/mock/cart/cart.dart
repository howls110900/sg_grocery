class ListCart {
  final String title;
  final String kilogram;
  final String price;
  final String sale;
  final String quality;
  final String img;
  ListCart(
      {required this.price,
      required this.quality,
      required this.title,
      required this.sale,
      required this.kilogram,
      required this.img});
}

List<ListCart> listCart = [
  ListCart(
      price: '\$2',
      quality: '1',
      title: 'Shimla Apple',
      sale: '\$3.25',
      kilogram: '1 kg',
      img: 'assets/png/shimla_apple.png'),
  ListCart(
      price: '\$4',
      quality: '1',
      title: 'Basmati Rice',
      sale: '\$8',
      kilogram: '1 kg',
      img: 'assets/png/basmati_rice.png'),
  ListCart(
      price: '\$1',
      quality: '1',
      title: 'Organic Tomatoes',
      sale: '\$2',
      kilogram: '1 kg',
      img: 'assets/png/organic_tomatoes_2.png')
];
