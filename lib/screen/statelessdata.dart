import 'package:blogpost/screen/data.dart';
import 'package:flutter/material.dart';

class StlData extends StatelessWidget {
  const StlData({Key? key}) : super(key: key);
  // final String? name;

  @override
  Widget build(BuildContext context) {
    Hello a = ModalRoute.of(context)!.settings.arguments as Hello;
    return Scaffold(
        appBar: AppBar(title: const Text('Stateless')),
        body: Center(child: Text('hello ${a.name}')));
  }
}
