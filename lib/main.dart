import 'package:fight_corona/data.dart';
import 'package:fight_corona/widgets/cardSection.dart';
import 'package:fight_corona/widgets/heasder.dart';
import 'package:fight_corona/widgets/pie_chartSection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Acme'),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: PieChart(),
          ),
        ],
      ),
    );
  }
}
