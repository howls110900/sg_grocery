import 'package:flutter/cupertino.dart';

class AccountPage extends StatefulWidget {

  const  AccountPage({super.key});
  @override
  State<StatefulWidget> createState() => _AccountPageState();

}

class _AccountPageState extends State< AccountPage>{

  @override
  Widget build(BuildContext context) {
    return const Text(" Account Page", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
  }

}