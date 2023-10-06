import 'package:flutter/cupertino.dart';

class FavPage extends StatefulWidget {

  const FavPage({super.key});
  @override
  State<StatefulWidget> createState() => _FavPageState();

}

class _FavPageState extends State<FavPage>{

  @override
  Widget build(BuildContext context) {
    return const Text("Fav Page",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
  }

}