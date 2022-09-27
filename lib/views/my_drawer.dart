import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,
            color: Colors.teal,
            child: CircleAvatar(radius: 50),
          ),
          ListTile(
            leading: Icon(Icons.home_work),
            title: Text('Home'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.home_work),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.home_work),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.home_work),
            title: Text('Home'),
          ),
        ],
      ),
    );
  }
}
