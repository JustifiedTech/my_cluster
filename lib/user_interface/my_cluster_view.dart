import 'package:flutter/material.dart';

class MyClusterView extends StatelessWidget {
  const MyClusterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(300.0), // here the desired height
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            title: const Text(
              "My cluster",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
