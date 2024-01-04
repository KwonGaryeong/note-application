import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/add_page/add_page.dart';
import 'package:flutter_application_5/pages/main_page/main_page.dart';
import 'package:flutter_application_5/pages/note_page/note_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const MainPage(),
        ),
        GetPage(
          name: '/add',
          page: () => const AddPage(),
        ),
        GetPage(
          name: '/view',
          page: () => const NotePage(),
        ),
      ],
      initialRoute: '/',
    );
  }
}


