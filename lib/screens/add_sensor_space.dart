import 'package:flutter/material.dart';

class AddParkingSpaceScreen extends StatefulWidget {
  static const String id = 'addSensor';
  const AddParkingSpaceScreen({super.key});

  @override
  _AddParkingSpaceScreenState createState() => _AddParkingSpaceScreenState();
}

class _AddParkingSpaceScreenState extends State<AddParkingSpaceScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController sensorNodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Parking Space'),
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
              controller: sensorNodeController,
              decoration: const InputDecoration(
                labelText: 'Sensor Node*',
              ),
            ),
            TextField(
              controller: sensorNodeController,
              decoration: const InputDecoration(
                labelText: 'Parking Lot*',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform parking space creation logic here
                String name = nameController.text;
                String sensorNode = sensorNodeController.text;

                // Add your parking space creation logic here
                // For now, just print the name and sensor node
                print('Name: $name');
                print('Sensor Node: $sensorNode');

                // Show a success message or navigate to another screen
                // based on the parking space creation result
              },
              child: const Text('Add Parking Space'),
            ),
          ],
        ),
      ),
    );
  }
}
