import 'package:flutter/material.dart';
import 'package:media_query/constants.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State <MobileLayout> createState() =>  MobileLayoutState();
}

class  MobileLayoutState extends State <MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
            color: Colors.grey[300],
          ),
          );
        }
      ),
      ),
    ),
    Expanded(
      child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey[300],
            height: 80,
        )
        );
      }
      ) 
      )
    ],
    )
    );
  }
}