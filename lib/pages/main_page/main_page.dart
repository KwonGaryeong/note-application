import 'package:flutter/material.dart';
import '../add_page/add_page.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("나의하루"),
      ),
      body: Column(
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(1990),
            lastDate: DateTime(2300),
            onDateChanged: (value) {},
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text("num"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: null,
                    ),
                    onTap: () => Get.toNamed('/view'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add'),
        child: Icon(Icons.add),
      ),
    );
  }
}
