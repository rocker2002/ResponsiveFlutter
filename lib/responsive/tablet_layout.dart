import 'package:flutter/material.dart';
import 'package:media_query/constants.dart';


class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
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
    );
  }
}