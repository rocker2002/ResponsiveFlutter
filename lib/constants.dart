import 'package:flutter/material.dart';

var myAppBar = AppBar(
        backgroundColor: Colors.grey[500],
        title: Text('R E S P O N S I V E'),
        centerTitle: true,
      );

var myDrawer = Drawer(
        shape: LinearBorder(),
        child: ListView(
          children: [
            DrawerHeader(child: Icon(Icons.dashboard, size: 40.0,)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E', style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () => debugPrint('Home Page'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('F A V O U R I T E S', style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () => debugPrint('Favourites Page'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S', style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () => debugPrint('Settings Page'),
            )
          ],
        )
      );