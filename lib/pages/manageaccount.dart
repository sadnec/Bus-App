import 'package:flutter/material.dart';

//Ndifor Denzel Dayepgha

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Booking History',
 theme: ThemeData(
 primarySwatch: Colors.blue,
),
home: BookingHistoryScreen(),
);
 }
}
class BookingHistoryScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    title: Text('Booking History'),
),
   body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Name:',
          style: TextStyle(fontSize: 18),
          ),
        Text(
          'Residence:',
          style: TextStyle(fontSize: 18),
          ),
        SizedBox(height: 20),
        Text(
          'Booking History',
          style: TextStyle(
            fontSize: 24, 
            fontWeight:FontWeight.bold
            ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle "Manage Account" button press
              },
              child: Text('Manage Account'),
              ),
              ],
              ),
              ),
              );
}
}