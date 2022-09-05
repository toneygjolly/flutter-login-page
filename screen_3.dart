import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

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
  TextEditingController Date_of_BirthController = TextEditingController();
  TextEditingController Two_words_that_best_decribe_youController =
      TextEditingController();

  TextEditingController BioController = TextEditingController();
  TextEditingController Workout_PreferenceController = TextEditingController();
  TextEditingController HeightController = TextEditingController();
  TextEditingController WeightController = TextEditingController();

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
              controller: Date_of_BirthController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date of Birth:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: Two_words_that_best_decribe_youController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Two words that best decribe you:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: BioController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bio:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: Workout_PreferenceController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Workout Preference:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: HeightController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Height:',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: WeightController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight:',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
