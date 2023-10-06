class GroceriesProduct {
  final String title;
  final String quality;
  final String price;
  final String img;
  GroceriesProduct({required this.title, required this.quality, required this.price, required this.img});
}

List<GroceriesProduct> listGroceriesProduct = [
  GroceriesProduct(title: 'Jaggery Powder', quality: '500 g', price: '\$3', img: 'assets/png/jaggery_powder.png'),
  GroceriesProduct(title: 'TATA Arhar Dal', quality: '1 kg', price: '\$4', img: 'assets/png/tata_arhar_dal.png'),
  GroceriesProduct(title: 'Saffola gold oil', quality: '5 Ltr + 1 ltr', price: '\$20', img: 'assets/png/saffola_gold_oil_3.png'),
  GroceriesProduct(title: 'Saffola gold oil', quality: 'Moon', price: '\$50', img: 'assets/png/saffola_gold_oil_4.png'),
];