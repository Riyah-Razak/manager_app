import 'package:flutter/material.dart';
import 'package:manager_app/controllers/VehicleController.dart';
import 'package:manager_app/models/VehicleList.dart';

class AddVehicleDialog extends StatefulWidget {
  final VehicleController vehicleController;

  const AddVehicleDialog({Key? key, required this.vehicleController}) : super(key: key);

  @override
  _AddVehicleDialogState createState() => _AddVehicleDialogState();
}

class _AddVehicleDialogState extends State<AddVehicleDialog> {
  final _formKey = GlobalKey<FormState>();
  String vehicleNo = '';
  String tokenNo = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: const Text(
        'Add Vehicle',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Vehicle No'),
              onChanged: (value) {
                setState(() {
                  vehicleNo = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter vehicle number';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Token No'),
              onChanged: (value) {
                setState(() {
                  tokenNo = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter token number';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        Center(
          child: TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.vehicleController.addVehicle(VehicleList(vehicleNo: vehicleNo, tokenNo: tokenNo));
                Navigator.of(context).pop();
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFED2024)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: const Text(
              'Add',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}