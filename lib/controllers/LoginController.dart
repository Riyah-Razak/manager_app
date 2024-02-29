import 'package:flutter/cupertino.dart';
class LoginController with ChangeNotifier {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
