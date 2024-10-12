import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke halaman login
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Create a new account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal, // Warna teks yang menarik
              ),
            ),
            SizedBox(height: 30),
            _buildTextField(_nameController, "Full Name", Icons.person),
            SizedBox(height: 15),
            _buildTextField(_emailController, "Email", Icons.email, keyboardType: TextInputType.emailAddress),
            SizedBox(height: 15),
            _buildTextField(_usernameController, "Username", Icons.account_circle),
            SizedBox(height: 15),
            _buildTextField(_passwordController, "Password", Icons.lock, obscureText: true),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Simpan data register di sini
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.teal, // Warna tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman login
              },
              child: Text(
                "Back to Login",
                style: TextStyle(fontSize: 16, color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon, {bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(icon),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal, width: 2.0), // Border saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border saat tidak fokus
        ),
      ),
    );
  }
}
