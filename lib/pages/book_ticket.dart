import 'package:flutter/material.dart';

class TicketPurchase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Bamenda Yaounde'),
        ),
      ),
      body: ListView(
        children: [
          buildBusCard(
            'Vatican Express',
            'Bamenda',
            'Yaounde',
            '3 Nov 2023',
            '9:00 AM',
            'Single-deck bus',
            '5000CFA',
          ),
          buildBusCard(
            'Amour Mezam',
            'Bamenda',
            'Yaounde',
            '3 Nov 2023',
            '9:45 AM',
            'Coach',
            '5200CFA',
          ),
          buildBusCard(
            'General Express',
            'Bamenda',
            'Yaounde',
            '3 Nov 2023',
            '8:50 AM',
            'Mini Bus',
            '5500CFA',
          ),
        ],
      ),
    );
  }

  Widget buildBusCard(
      String busName,
      String departure,
      String destination,
      String date,
      String time,
      String busType,
      String price,
      ) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      busName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Departure: $departure'),
                    Text('Destination: $destination'),
                    Text('Date: $date'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Time: $time'),
                    Text('Bus Type: $busType'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Handle buy ticket
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                  child: Text('Buy Ticket'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Price:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}