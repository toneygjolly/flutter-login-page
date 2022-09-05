import 'package:fitu/user.dart';

import 'package:flutter/material.dart';

import 'calender.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({Key? key}) : super(key: key);

  static const String _title = 'WECLOME';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          actions: <Widget>[
            TextButton(
              style: style,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const Calender();
                    },
                  ),
                );
              },
              child: const Text('Calender'),
            ),
            TextButton(
              style: style,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const User();
                    },
                  ),
                );
              },
              child: const Text('User'),
            )
          ],
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textField = TextField(
      controller: nameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Bio::',
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'U.FIT',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 50),
              )),
        ],
      ),
    );
  }
}
