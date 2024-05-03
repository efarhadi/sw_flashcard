import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class testload extends StatefulWidget {
  const testload({Key? key}) : super(key: key);

  @override
  _testloadState createState() => _testloadState();
}

class _testloadState extends State<testload> {
  List _items = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/words.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return _HomeScreenCard(
                  _items[index]["name"], _items[index]["id"], context);
            },
          ),
        )
      ],
    );
  }

  Widget _HomeScreenCardFront(String text, context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      // width: 200,
      child: Text(text),
    );
  }

  Widget _HomeScreenCardBack(String text, context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      // width: 200,
      child: Text(text),
    );
  }

  Widget _HomeScreenCard(String textFront, String textBack, context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, // default

      front: _HomeScreenCardFront(textFront, context),
      back: _HomeScreenCardBack(textBack, context),
    );
  }
}
