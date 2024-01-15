import 'package:flutter/material.dart';

// Cindy

class BusBookingApp extends StatelessWidget {
  const BusBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Booking'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Bamenda'),
              const Text('Yaounde'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Explore'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const BusService(
            name: 'Vatican Express',
            departureTime: '9:00 AM',
            busType: 'Single-Deck bus',
            price: '5000FCFA',
          ),
          const BusService(
            name: 'General Express',
            departureTime: '8:50 AM',
            busType: 'Mini bus',
            price: '5500FCFA',
          ),
        ],
      ),
    );
  }
}

class BusService extends StatelessWidget {
  final String name;
  final String departureTime;
  final String busType;
  final String price;

  const BusService({
    required this.name,
    required this.departureTime,
    required this.busType,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text(departureTime),
            Text(busType),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Buy Ticket'),
            ),
            Text('Price: $price'),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}