import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await switchLanguageController.initLanguage();
  runApp(MyApp());
}
SwitchLanguageController switchLanguageController =
    Get.put(SwitchLanguageController());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
       translations: ChangeLocalControlller(),
          locale: switchLanguageController.english.value

              ? const Locale('en', 'US')
              : const Locale('KH', 'KH'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'.tr),
      ),
    );
  }
}