import 'package:flutter/material.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _HomeScreenCard('فلش کارت A1', context),
          _HomeScreenCard('فلش کارت A2', context),
        ],
      ),
    );
  }

  Widget _HomeScreenCard(String text, context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      // width: 200,
      child: Text(text),
    );
  }
}
