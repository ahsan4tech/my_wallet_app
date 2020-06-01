import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_wallet_app/data.dart';
import 'package:my_wallet_app/widgets/pie_chart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Expenses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ...expenses
                  .map(
                    (value) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 5,
                            backgroundColor:
                                pieColors[expenses.indexOf(value)],
                          ),
                          SizedBox(width: 5),
                          Text(
                            value['name'],
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: PieChart(),
                ),
              ],
            )
        ],
      ),
    );
  }
}
