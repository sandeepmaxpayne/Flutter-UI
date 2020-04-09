import 'package:fight_corona/data.dart';
import 'package:fight_corona/widgets/cardDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Expanded(
          // By default ListView.Builder is vertical
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Container(
                  // get device width using media query
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: customShadow,
                      borderRadius: BorderRadius.circular(20.0)),

                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        ),
                        left: -300,
                        top: -100,
                        bottom: -100,
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        ),
                        top: 150,
                        bottom: -200,
                      ),
                      CardDetails(),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
