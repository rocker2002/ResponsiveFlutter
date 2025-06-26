import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    if(width>600){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     decoration: BoxDecoration(border: Border.all(),
                     color: Colors.amberAccent,
                     borderRadius: BorderRadius.circular(20.0),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Text('Name: Moizz Uddin Ahmad', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 50,),
                    Container(
                     decoration: BoxDecoration(border: Border.all(),
                     color: Colors.amberAccent,
                     borderRadius: BorderRadius.circular(20.0),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Text('Role: Flutter Developer', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(width: 100,),
                Image.asset('assets/images/me.jpg', width: 200,),
              ],
            ),
          )
        ),
      ),
    );
    }else{
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Image.asset('assets/images/me.jpg', width: 200,),
                    SizedBox(height: 50),
                    Container(
                     decoration: BoxDecoration(border: Border.all(),
                     color: Colors.amberAccent,
                     borderRadius: BorderRadius.circular(20.0),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Text('Name: Moizz Uddin Ahmad', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 50,),
                    Container(
                     decoration: BoxDecoration(border: Border.all(),
                     color: Colors.amberAccent,
                     borderRadius: BorderRadius.circular(20.0),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Text('Role: Flutter Developer', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),

          ),
        ),
      ),
      );    
    }
  }
}

