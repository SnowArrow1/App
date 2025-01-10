import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

int date = 0;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hi there',
          style: TextStyle(
            color: const Color.fromARGB(255, 215, 215, 215),
            fontFamily: 'AbrilFatface',
            letterSpacing: 2.0,
            ),
          ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Text(
              'You have',
              style: TextStyle(
                fontSize: 40.0,
                letterSpacing: 2.0,
                fontFamily: 'AbrilFatface',
                color: Colors.white,
                ),
            ),
          ),
          Text('$date\n days Working out'),
          Container(
            margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Center(
              child: FloatingActionButton(
                onPressed: (){
                  date++;
                },
                backgroundColor: Colors.white,
                child: Text(
                  '+',
                  style: TextStyle(
                    fontFamily: 'IbmpBold',
                    fontSize: 30.0,
                  ),
                ),
              )
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 66, 66, 66),
    );
  }
}