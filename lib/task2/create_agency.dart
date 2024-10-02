import 'package:flutter/material.dart';

class create_agency extends StatelessWidget {
  const create_agency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create Agency"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
        child: Column(
          children: [
            SizedBox(
              width: 150,
              height: 200,
              child: Card(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEbV3wzYtBhriyo7l1qMtQ5n1Ufi0mco0ZvQ&s'),
              ),
            ),
            Text(
              'Name: ', // Title beside the TextField
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 16), // Add spacing between title and TextField
            Expanded(
              // Use Expanded to make TextField take remaining space
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Name',
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ), // trying to move to the bottom
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
