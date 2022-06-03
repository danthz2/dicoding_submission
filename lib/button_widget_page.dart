import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatefulWidget {
  const ButtonWidgetPage({Key? key}) : super(key: key);

  @override
  State<ButtonWidgetPage> createState() => _ButtonWidgetPageState();
}

class _ButtonWidgetPageState extends State<ButtonWidgetPage> {
  int angka = 1;
  double angkaSize = 15;
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
              angka.toString(),
              style: TextStyle(fontSize: angkaSize),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      angka++;
                    });
                  },
                  child: Text("Tambah"),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      angkaSize++;
                    });
                  },
                  child: Text("Perbesar"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      angkaSize--;
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
