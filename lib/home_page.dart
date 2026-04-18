import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Homepage", style: TextStyle(color: Colors.amber)),
        // leading: Icon(Icons.home, color: Colors.green),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
        // ],
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(10), child: Text("Hello 63C")),
          Text("Welcome to the homepage"),
          Container(
            height: 300,
            width: 400,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            color: Colors.blueGrey,
            child: Text("Container"),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Homepage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
