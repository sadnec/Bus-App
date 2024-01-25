import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String query = '';
  String location = 'Your Location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: 'Way', style: TextStyle(color: Colors.yellow)),
              TextSpan(
                  text: 'Finder', style: TextStyle(color: Colors.red[800])),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add your settings button functionality here
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(96.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 10.0),
                      Text(
                        location,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      query = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Enter Your Destination",
                    hintText: "Enter Your Destination",
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Available buses',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(
                        'https://image.shutterstock.com/image-vector/bus-icon-vector-template-flat-260nw-1413254132.jpg',
                        width: 50,
                        height: 50),
                    Text('Mini Bus'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.network(
                        'https://image.shutterstock.com/image-vector/black-bus-icon-isolated-on-260nw-1347986165.jpg',
                        width: 50,
                        height: 50),
                    Text('Coach'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.network(
                        'https://cdn-icons-png.flaticon.com/128/21/21176.png',
                        width: 50,
                        height: 50),
                    Text('Single Deck Bus'),
                  ],
                ),
              ],
            ),
          ],

        ),
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
