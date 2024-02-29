import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manager_app/controllers/VehicleController.dart';
import 'package:manager_app/view/AddVehicleDialog.dart';
import 'package:provider/provider.dart';

class VehicleScreen extends StatelessWidget{
  const VehicleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final VehicleController vehicleController = Provider.of<VehicleController>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: vehicleController.vehicleList.length,
        itemBuilder: (context, index) {
          final vehicle = vehicleController.vehicleList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: ListTile(
                title: Text(vehicle.vehicleNo),
                subtitle: Text(vehicle.tokenNo),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_circle),
                  onPressed: () => vehicleController.removeVehicle(vehicle),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddVehicleDialog(vehicleController: vehicleController);
            },
          );
        },
        tooltip: 'Add Vehicle',
        backgroundColor: const Color(0xFFED2024),
        child: const Icon(Icons.add),
      ),
    );
  }
}