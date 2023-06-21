import 'package:flutter/material.dart';
import 'package:sma_car/screens/add_sensor_space.dart';

class AddCarLotScreen extends StatefulWidget {
  static const String id = 'addLot';
  const AddCarLotScreen({super.key});

  @override
  _AddCarLotScreenState createState() => _AddCarLotScreenState();
}

class _AddCarLotScreenState extends State<AddCarLotScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Car Lot'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name*',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                labelText: 'Location*',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform car lot creation logic here
                String name = nameController.text;
                String location = locationController.text;

                // Add your car lot creation logic here
                // For now, just print the name and location
                Navigator.pushNamed(context, AddParkingSpaceScreen.id);
                print('Name: $name');
                print('Location: $location');

                // Show a success message or navigate to another screen
                // based on the car lot creation result
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
