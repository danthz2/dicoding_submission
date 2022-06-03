import 'package:flutter/material.dart';

class SwitchWidgetPage extends StatefulWidget {
  @override
  State<SwitchWidgetPage> createState() => _SwitchWidgetPageState();
}

class _SwitchWidgetPageState extends State<SwitchWidgetPage> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bagaimana Menggunakan Widget Switch?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Ketik => Switch()"),
            SizedBox(
              height: 5,
            ),
            Text(
                "Widget Switch memiliki default parameter yang harus digunakan, yaitu 'value' dan 'onChanged'. value bertipe boolean, dimana ketika value diisi dengan false, indikator akan redup, sebaliknya jika value diisi true, indikator akan menyala. onChanged bertipe function, gunanya untuk merubah value yang false menjadi true, anda memerlukan stateful widget untuk dapat menggunakan onchanged, karena halaman harus dirender ulang untuk bisa melihat perubahan yang terjadi"),
            SizedBox(
              height: 5,
            ),
            Text("Beriku Contoh dari Widget Switch"),
            Switch(
                value: isActive,
                onChanged: (bool newValue) {
                  setState(() {
                    isActive = newValue;
                  });
                })
          ],
        ),
      ),
    );
  }
}
