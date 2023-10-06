class ListDealsOfTheWeek {
  final String img;
  final String title;
  final String sale;
  ListDealsOfTheWeek(
      {required this.img, required this.title, required this.sale});
}

List<ListDealsOfTheWeek> listDealsOfTheWeek = [
  ListDealsOfTheWeek(
    img: 'assets/png/soft_drink.png',
    title: 'Soft drinks',
    sale: 'Upto 40% off',
  ),
  ListDealsOfTheWeek(
    img: 'assets/png/tea.png',
    title: 'Tea',
    sale: 'Upto 30% off',
  ),
  ListDealsOfTheWeek(
    img: 'assets/png/bath.png',
    title: 'Bath',
    sale: 'Min 20% of',
  ),
];
