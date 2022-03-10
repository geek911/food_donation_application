import 'package:flutter/material.dart';
import 'package:food_donation_application/pages/login_page.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  void _logout(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              _logout(context);
            },
          )
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100,
              color: Colors.teal,
            ),
            const ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.house, size: 20),
            ),
            const ListTile(
              title: Text("Donations"),
              trailing: Icon(Icons.star),
            ),
            const ListTile(
              title: Text("Accepted"),
              trailing: Icon(Icons.star)
            ),
          ],
        ),
      ),
    );
  }
}
