import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  //color: Colors.deepOrange,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      //left: -200,
                      top: 100,
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          color: Colors.white30,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -200,
                      top: -80,
                      bottom: -80,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          color: Colors.white30,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
