import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manager_app/controllers/VehicleController.dart';
import 'package:manager_app/models/VehicleList.dart';

class AddVehicleDialog extends StatelessWidget{
  final VehicleController vehicleController;
  const AddVehicleDialog({super.key, required this.vehicleController});

  @override
  Widget build(BuildContext context){
    String vehicleNo='';
    String tokenNo='';
    return AlertDialog(
      title: const Text('Add Vehicle'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Vehicle No'),
            onChanged: (value){
              vehicleNo=value;
            },
          ),
          const SizedBox(height :16),
          TextField(
            decoration: const InputDecoration(labelText: 'Token No'),
            onChanged: (value){
              tokenNo=value;
            },
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          vehicleController.addVehicle(VehicleList(vehicleNo: vehicleNo,tokenNo: tokenNo));
          Navigator.of(context).pop();
        }, child:
        const Text('Add')),
      ],
    );
  }
}