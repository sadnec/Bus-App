import 'package:flutter/material.dart';

//Rita 

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('User Profile'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name:',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Residence:',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                label: const Text('Manage Account'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.expand_more),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Booking History'),
            children: [
              ListTile(
                title: Text('Booking 1'),
              ),
              ListTile(
                title: Text('Booking 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}