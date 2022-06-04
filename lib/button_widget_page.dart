import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatefulWidget {
  const ButtonWidgetPage({Key? key}) : super(key: key);

  @override
  State<ButtonWidgetPage> createState() => _ButtonWidgetPageState();
}

class _ButtonWidgetPageState extends State<ButtonWidgetPage> {
  int _angka = 1;
  double _angkaSize = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bagaimana Menggunakan Widget Button?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Ada 3 jenis button yang disediakan Flutter: ElevatedButton, OutlinedButton, dan TextButton"),
            SizedBox(
              height: 10,
            ),
            Text(
              "ElevatedButton",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              _angka.toString(),
              style: TextStyle(fontSize: _angkaSize),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _angka++;
                    });
                  },
                  child: Text("Tambah"),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _angkaSize++;
                    });
                  },
                  child: Text("Perbesar"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _angkaSize--;
                    });
                  },
                  child: Text("Perkecil"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
