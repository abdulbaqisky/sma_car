/*

import 'package:flutter/material.dart';

class ReservationScreen extends StatefulWidget {
  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final TextEditingController driverIdController = TextEditingController();
  late String selectedParkingLot;
  late String selectedParkingSpace;

  List<String> parkingLots = ['Lot A', 'Lot B', 'Lot C'];
  List<String> parkingSpaces = ['Space 1', 'Space 2', 'Space 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Reservation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: driverIdController,
              decoration: InputDecoration(
                labelText: 'Driver ID',
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: selectedParkingLot,
              decoration: InputDecoration(
                labelText: 'Parking Lot',
              ),
              onChanged: (newValue) {
                setState(() {
                  selectedParkingLot = newValue;
                  selectedParkingSpace = null;
                });
              },
              items: parkingLots.map((lot) {
                return DropdownMenuItem<String>(
                  value: lot,
                  child: Text(lot),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: selectedParkingSpace,
              decoration: InputDecoration(
                labelText: 'Parking Space',
              ),
              onChanged: (newValue) {
                setState(() {
                  selectedParkingSpace = newValue;
                });
              },
              items: parkingSpaces.map((space) {
                return DropdownMenuItem<String>(
                  value: space,
                  child: Text(space),
                );
              }).toList(),
              disabledHint: Text('Select a parking lot first'),
              onChanged: selectedParkingLot != null
                  ? (newValue) {
                setState(() {
                  selectedParkingSpace = newValue;
                });
              }
                  : null,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform reservation logic here
                String driverId = driverIdController.text;

                // Add your reservation logic here
                // You can access driverId, selectedParkingLot, and selectedParkingSpace

                // For now, just print the reservation details
                print('Driver ID: $driverId');
                print('Parking Lot: $selectedParkingLot');
                print('Parking Space: $selectedParkingSpace');

                // Show a success message or navigate to another screen
                // based on the reservation result
              },
              child: Text('Make Reservation'),
            ),
          ],
        ),
      ),
    );
  }
}

*/
