import 'package:blogpost/screen/data.dart';
import 'package:flutter/material.dart';

class InterfaceApp extends StatefulWidget {
  const InterfaceApp({Key? key}) : super(key: key);
  @override
  _InterfaceAppState createState() => _InterfaceAppState();
}

class _InterfaceAppState extends State<InterfaceApp> {
  String name = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interface"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 10.0),
            child: Column(
              children: [
                TextFormField(
                  onSaved: (val) {
                    name = val!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "* required";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: "TextField",
                    labelText: "Enter some text",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             StatelessPage(name: name)));
                      Hello hello = Hello(name);
                      Navigator.pushNamed(context, '/stateless',
                          arguments: hello);
                    }
                  },
                  child: const Text(
                    "Stateless",
                    textScaleFactor: 2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      Hello hello = Hello(name);
                      Navigator.pushNamed(context, '/statefull',
                          arguments: hello);
                    }
                  },
                  child: const Text(
                    "Stateful",
                    textScaleFactor: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
