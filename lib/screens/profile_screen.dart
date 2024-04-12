import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Contoh data pengguna
  String _username = "Ayupuspa";
  String _email = "ayupuspa541.com";
  int _age = 20;
  String _bio =
      "Be Healty Everyday";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/logo_aplikasi.png'),
            ),
            SizedBox(height: 20),
            Text(
              _username,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              _email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Umur'),
              subtitle: Text('$_age tahun'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Bio'),
              subtitle: Text(_bio),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                // Fungsi untuk mengubah profil
                // Tambahkan logika sesuai kebutuhan aplikasi Anda
              },
              child: Text('Ubah Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
