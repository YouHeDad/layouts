import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget topHalf = Stack(
      children: [
        Image.asset(
          'images/giphy.gif',
           width: double.infinity,
           fit: BoxFit.fitWidth,
        ),

        Column(
          children: [
            Flexible(
              flex: 20,
              child: Container(
                color: const Color(0xF2a1a6aa)
              )
            ),
            Flexible(
                flex: 7,
                child: Container(
                    color: const Color(0xF2bd928b)
                )
            ),
            Flexible(
                flex: 3,
                child: Container(
                    color: const Color(0xF2e07471)
                )
            ),
            Flexible(
                flex: 1,
                child: Container(
                    color: const Color(0xFFff4d49)
                )
            ),
      ]
      ),
    ],
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Camping Ground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBottomColumn(color, Icons.call, 'CALL'),
        _buildBottomColumn(color, Icons.near_me, 'ROUTE'),
        _buildBottomColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      width: double.infinity,
      color: const Color(0xFF282634),
      child: const Padding(
        padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLength: 100, //character maximum
              maxLines: 6,
              cursorColor: Color(0xFF5abd7e),
              style: TextStyle(color: Color(0xFFffffff), height: 1.0),
              decoration: InputDecoration(
                fillColor: Color(0xff272740),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFffffff),
                      width: 2.0,
                    ),
                ),
                hintText: 'Type your daily summary.',
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.white)
             ),
            ),
          ),
    );

    return MaterialApp(
      title: 'Layouts',
      theme: ThemeData(fontFamily: 'EBGaramond'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layouts'),
        ),
        body: Column(
          children: [
            Expanded(
                child: topHalf
              ),
            Expanded(
              child:  textSection
            ),
          ]
            ),
        ),
      );

  }
  Column _buildBottomColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'EBGaramond',
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}





