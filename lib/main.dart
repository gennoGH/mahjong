import 'package:flutter/material.dart';
import 'package:mahjong_calculation/1-3screen.dart';
import 'package:mahjong_calculation/2-3screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ButtonTheme(
                      minWidth: 200.0,
                      height: 200.0,
                      child: RaisedButton(
                      child: Text('1-3', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),),
                      color: Colors.red,
                      shape: const StadiumBorder(),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Screen13()),
                        );
                      },
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ButtonTheme(
                      minWidth: 200.0,
                      height: 200.0,
                      child: RaisedButton(
                      child: Text('2-3', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),),
                      color: Colors.red,
                      shape: const StadiumBorder(),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Screen23()),
                        );
                      },
                      )
                    ),
                  )
                ],
              ),
            )
          );
          }
  }
