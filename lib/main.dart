import 'package:flutter/material.dart';
import 'package:manager_app/view/LoginScreen.dart';
import 'package:provider/provider.dart';

import 'controllers/VehicleController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
      ChangeNotifierProvider(create: (_) =>VehicleController()),
      ],
      child: MaterialApp(
        title:'Valet App Demo' ,
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}

