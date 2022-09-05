import 'package:fitu/screen_1.dart';
import 'package:fitu/screen_3.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
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
  TextEditingController Mobile_NumberController = TextEditingController();
  TextEditingController E_mailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  TextEditingController Conform_PasswordController = TextEditingController();

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
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Details',
                style: TextStyle(fontSize: 20),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: Mobile_NumberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile Number:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: E_mailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: PasswordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: Conform_PasswordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Conform-Password:',
              ),
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: ElevatedButton(
                child: const Text('Save'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return ScreenTwo();
                      },
                    ),
                  );
                },
              )),
          Container(
              height: 30,
              padding: const EdgeInsets.fromLTRB(30, 10, 25, 0),
              child: ElevatedButton(
                child: const Text('next'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const ScreenOne();
                      },
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
