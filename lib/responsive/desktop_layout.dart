import 'package:flutter/material.dart';
import 'package:media_query/constants.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
          child: Column(
          children: [
          AspectRatio(
          aspectRatio: 4.0,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
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
      ),
          Expanded(
            child: Container(
              color: Colors.grey[300],
            )
          )
        ],
      ),
    );
  }
}