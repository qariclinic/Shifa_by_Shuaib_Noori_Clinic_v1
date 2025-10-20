import 'package:flutter/material.dart';
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('رابطہ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ListTile(
              leading: Icon(Icons.place),
              title: Text('جامعہ عائشہ صدیقہ'),
              subtitle: Text('بٹگرام، خیبر پختونخوا'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+92-xxx-xxxxxxx'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('contact@shuaibclinic.example'),
            ),
          ],
        ),
      ),
    );
  }
}
