import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_01/task2/create_agency.dart';

class agency extends StatelessWidget {
  const agency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 115, 131, 225),
        centerTitle: true,
        title: Text(
          "Agency",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.question_circle,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 115, 131, 225),
            child: Column(
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 90,
                    height: 200,
                    child: Card(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEbV3wzYtBhriyo7l1qMtQ5n1Ufi0mco0ZvQ&s'),
                    ),
                  ),
                  title: Column(
                    children: [
                      Text("King Agency",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left),
                      Text("ID: 420", textAlign: TextAlign.left),
                      Container(
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Set the corner radius
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                            child: Row(
                              children: [
                                Icon(Icons.people),
                                Spacer(),
                                Text("301/600")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing:
                      ElevatedButton(onPressed: () {}, child: Text("Invite")),
                ),
                Text(
                  "Announcment: ভালোবাসা অভিযান",
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.to(create_agency());
              },
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
          ),
          Text(
            "Commision Balance:\$3733(132 Star)",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
