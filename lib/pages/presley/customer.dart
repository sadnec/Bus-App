import 'package:flutter/material.dart';
import 'package:quotes/pages/presley/bookings.dart';



class CustomerList extends StatelessWidget {
  const CustomerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(


        leading: IconButton(

          color: Colors.black,

          icon: Icon(Icons.arrow_back),

          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bookings()), // Navigate to Bookings
            );

          },

        ),

      ),


      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,


        children: [

          Container(

            margin: EdgeInsets.only(
                   top: 45,
                  bottom: 45),

      padding: EdgeInsets.only(
          left: 45,
          right: 45),

            child: Row(


              children: [

                Container(

                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(10),

                  color: Colors.red

                  ),


                  child: Text(
                    'Customers',
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,

                    ),

                  ),

                ),

      Spacer(),

      Text(
        'Total: 13',
        style: TextStyle(fontSize: 15.0),
      ),
      ],

            ),
          ),

          SizedBox(height: 20,),

          const Divider(thickness: 1), // Add a divider line for visual clarity

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Name',
                style: TextStyle(color: Colors.black), // Apply black color
              ),

              Text(
                'Bus Number',
                style: TextStyle(color: Colors.black), // Apply black color
              ),

              Text(
                'Date of Booking',
                style: TextStyle(color: Colors.black), // Apply black color
              ),
            ],
          ),



          Column( // Generate 10 dashes vertically aligned


            children: List.generate(
              10,

                  (_) => Container(
                margin: const EdgeInsets.only(top: 20), // Adjust spacing as needed
                height: 2,
                width: 10, // Adjust width as desired
                color: Colors.grey,


              ),
            ),
          ),



          SizedBox(height: 20,),

          const Divider(thickness: 1), // Add another divider for visual separation

        ],
      ),
    );
  }



}
