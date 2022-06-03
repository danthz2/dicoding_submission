import 'package:dicoding_submission/button_widget_page.dart';
import 'package:dicoding_submission/switch_widget_page.dart';
import 'package:dicoding_submission/text_widget_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> widgetType = [
    {'name': 'Text Widget', 'page': TextWidgetPage()},
    {'name': 'Switch Widget', 'page': SwitchWidgetPage()},
    {'name': 'Button Widget', 'page': ButtonWidgetPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Widget")),
      body: LayoutBuilder(builder: ((context, constraints) {
        if (constraints.maxWidth < 800) {
          return MobileHome(widgetType: widgetType);
        } else {
          return WebHome(widgetType: widgetType);
        }
      })),
    );
  }
}

class WebHome extends StatelessWidget {
  const WebHome({
    Key? key,
    required this.widgetType,
  }) : super(key: key);

  final List<Map<String, dynamic>> widgetType;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: widgetType
          .map((e) => Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => e['page'],
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2,
                    child: Center(
                      child: Text(
                        e['name'] ?? "kosong",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({
    Key? key,
    required this.widgetType,
  }) : super(key: key);

  final List<Map<String, dynamic>> widgetType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widgetType
          .map((e) => Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => e['page'],
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2,
                    child: Center(
                      child: Text(
                        e['name'] ?? "kosong",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
