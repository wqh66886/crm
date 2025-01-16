import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String title;
  final bool flag;
  final double pct;
  final int num;

  const CardPage(
      {super.key,
      required this.title,
      required this.flag,
      required this.pct,
      required this.num});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: 200,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                "$num",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    "较上期 ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    flag
                        ? CupertinoIcons.arrow_up_circle_fill
                        : CupertinoIcons.arrow_down_circle_fill,
                    color: Colors.lightGreenAccent,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "$pct %",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreenAccent,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
