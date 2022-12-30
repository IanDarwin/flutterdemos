import 'package:flutter/material.dart';

class CardDemos extends StatefulWidget {
  const CardDemos({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CardDemosState();
  }
}

// Draws one "plain" rectangle and one with
// a rounded border to look better.
class _CardDemosState extends State<CardDemos> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
              color: Colors.greenAccent,
              child: SizedBox(
                  width: 250,
                  height: 100,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () => debugPrint('Savings Card tapped.'),
                    child:
                    Row(
                        children: const [
                          Icon(Icons.account_balance_rounded),
                          Text("Savings")
                        ]
                    ),
                  )
              )
          ),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.amberAccent,
              child: SizedBox(

                  width: 250,
                  height: 100,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () => debugPrint('Checking Card tapped.'),
                    child:
                    Row(
                        children: const [
                          Icon(Icons.account_balance_rounded),
                          Text("Checking")
                        ]
                    ),
                  )
              )
          )
        ]
    );
  }
}