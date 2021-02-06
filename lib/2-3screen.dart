import 'package:flutter/material.dart';
import 'package:mahjong_calculation/keisango.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Screen23(),
    );
  }
}
class Screen23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('麻雀計算機', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Center(
        child: Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('ウマ20-30　25000点持ち,30000点返し'),
                      Text('飛び賞10'),
                    ],
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 90,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '起家'
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 90,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '下家'
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 90,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '対面'
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 80,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '上家'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ButtonTheme(
                  height: 90,
                  child: RaisedButton(
                    child: Text('計算', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    color: Colors.red,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Keisango(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}