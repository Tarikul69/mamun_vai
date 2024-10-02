import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_01/task2/agency.dart';

class message extends StatelessWidget {
  const message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: ListTile(
                      title: CircleAvatar(),
                      subtitle: Text("data"),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(agency());
              },
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Tarikul Abir"),
                      subtitle: Text("Apr 15,2024 - Apr 15, 2024"),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Tarikul Abir"),
                    subtitle: Text("Apr 15,2024 - Apr 15, 2024"),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Tarikul Abir"),
                    subtitle: Text("Apr 15,2024 - Apr 15, 2024"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
