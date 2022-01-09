import 'package:blogpost/screen/data.dart';
import 'package:flutter/material.dart';

class StfData extends StatefulWidget {
  const StfData({Key? key}) : super(key: key);

  @override
  _StfDataState createState() => _StfDataState();
}

class _StfDataState extends State<StfData> {
  @override
  Widget build(BuildContext context) {
    Hello n = ModalRoute.of(context)!.settings.arguments as Hello;
    return Scaffold(
        appBar: AppBar(title: const Text("statefull")),
        body: Center(
          child: Text('stateful : ${n.name}'),
        ));
  }
}
