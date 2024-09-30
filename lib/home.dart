import 'package:flutter/material.dart';
import 'package:test_01/message.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Message",
                ),
                Tab(
                  text: "Friends",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  message(),
                  message(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
