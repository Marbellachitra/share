import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bantuan")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cara menggunakan aplikasi:"),
            Text("1. Login/Daftar"),
            Text("2. Navigasi melalui menu yang ada"),
            Text("3. Logout melalui bantuan"),
          ],
        ),
      ),
    );
  }
}
