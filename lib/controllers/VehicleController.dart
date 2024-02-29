import 'package:flutter/cupertino.dart';

import '../models/VehicleList.dart';

class VehicleController extends ChangeNotifier{
  final List<VehicleList>_list=[];

  List<VehicleList>get vehicleList=>_list;

  void addVehicle(VehicleList list){
    _list.add(list);
    notifyListeners();
  }

  void removeVehicle(VehicleList list){
    _list.remove(list);
    notifyListeners();
  }
}