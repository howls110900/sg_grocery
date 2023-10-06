class BakeryItems {
  final String title;
  final String quality;
  final String price;
  final String img;
  BakeryItems({required this.title, required this.quality, required this.price, required this.img});
}

List<BakeryItems> listBakeryItems = [
  BakeryItems(title: 'Parle Rusk', quality: '500 g', price: '\$3', img: 'assets/png/parle_rusk.png'),
  BakeryItems(title: 'Choco muffin', quality: '6 pcs.', price: '\$4', img: 'assets/png/choco_muffin.png'),
  BakeryItems(title: 'Harshey’s Bar', quality: '43 g', price: '\$2', img: 'assets/png/harshey’s_bar.png'),
  BakeryItems(title: 'Bread Crums', quality: '500 g', price: '\$5', img: 'assets/png/bread_crumbs.png'),
];