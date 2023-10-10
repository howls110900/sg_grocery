class DairyProducts {
  final String title;
  final String quality;
  final String price;
  final String img;
  DairyProducts({required this.title, required this.quality, required this.price, required this.img});
}

List<DairyProducts> listDairyProducts = [
  DairyProducts(title: 'A2MATE milk', quality: '0.5 ltr.', price: '\$2', img: 'assets/png/a2mate_milk.png'),
  DairyProducts(title: 'Amul Butter', quality: '0.5 ltr.', price: '\$2', img: 'assets/png/amul_butter.png'),
  DairyProducts(title: 'Sofit soya milk', quality: '0.5 ltr.', price: '\$2', img: 'assets/png/sofit_soya_milk.png'),
  DairyProducts(title: 'Peanut', quality: '0.5 ltr.', price: '\$2', img: 'assets/png/peanut.png'),
];