import 'package:fight_corona/main.dart';
import 'package:fight_corona/widgets/piechartdesign.dart';
import 'package:flutter/material.dart';
import 'package:fight_corona/data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            'Expenses',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map((value) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      pieColors[expenses.indexOf(value)],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  value['name'],
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: PieChartDesign(),
            )
          ],
        ),
      ],
    );
  }
}
