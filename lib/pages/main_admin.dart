import 'package:flutter/material.dart';

// Nadia
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _adminManagerController = TextEditingController();
  List<String> adminManagers = [
    'John Doe',
    'Mac A Roni',
    'Kelly Second Name',
  ];

  void addAdminManager() {
    String adminManagerName = _adminManagerController.text;
    if (adminManagerName.isNotEmpty) {
      setState(() {
        adminManagers.add(adminManagerName);
        _adminManagerController.clear();
      });
    }
  }

  void removeAdminManager(String name) {
    setState(() {
      adminManagers.remove(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Admin Manager'),
        ),
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _adminManagerController,
                decoration: InputDecoration(
                  labelText: 'Admin Manager',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: addAdminManager,
                child: Text('Add Admin Manager'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Admin Managers:',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: ListView.builder(
                  itemCount: adminManagers.length,
                  itemBuilder: (context, index) {
                    final name = adminManagers[index];
                    return ListTile(
                      title: Text(name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => removeAdminManager(name),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
