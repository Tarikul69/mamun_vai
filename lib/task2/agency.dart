import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_01/task2/create_agency.dart';

class agency extends StatelessWidget {
  const agency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 150,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "Agency",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(create_agency());
            },
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              Get.to(create_agency());
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: ListTile(
              leading: CircleAvatar(),
              title: Column(
                children: [
                  Text("King Agency",
                      style: TextStyle(), textAlign: TextAlign.left),
                  Text("ID: 420", textAlign: TextAlign.left),
                  Text("data", textAlign: TextAlign.left),
                ],
              ),
              trailing: ElevatedButton(onPressed: () {}, child: Text("Invite")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.score),
                      title: Text("Host Management"),
                      trailing: Icon(Icons.backspace_rounded))
                ],
              ),
            ),
          ),
          Text(
            "Commision Balance:3733(132 Star)",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
