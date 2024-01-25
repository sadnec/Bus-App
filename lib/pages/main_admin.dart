import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

// Nadia
class AdminManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Manager',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: AdminManagerScreen(),
    );
  }
}

class AdminManagerScreen extends StatefulWidget {
  @override
  _AdminManagerScreenState createState() => _AdminManagerScreenState();
}

class _AdminManagerScreenState extends State<AdminManagerScreen> {
  List<String> admins = ['John Doe', 'Mac A Roni', 'Kelly Second Name'];
  TextEditingController _adminNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total: ${admins.length}'),
            Text('Admin'),
          ],
        ),
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Admins:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: admins.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      admins[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          admins.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Add Admin:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _adminNameController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String adminName = _adminNameController.text;
                  if (adminName.isNotEmpty) {
                    admins.add(adminName);
                    _adminNameController.clear();
                  }
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[700],
                shape: CircleBorder(),
                padding: EdgeInsets.all(16.0),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _adminNameController.dispose();
    super.dispose();
  }
}
