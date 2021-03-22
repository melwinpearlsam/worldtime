import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          title: Text("Valorant Guide"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Container(
                  child: Text(
                    'Agent Abilities Guide',
                  ),
                  padding: EdgeInsets.all(20),
                  color: Colors.red[100],
                ),
                Container(
                    // child: Image.asset(images / Valorant_agent.jpg),
                    )
              ],
            ),
            Container(
                child: Text("Gun Guide"),
                padding: EdgeInsets.all(20),
                color: Colors.red[100])
          ],
        ));
  }
}
