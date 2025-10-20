import 'package:flutter/material.dart';
import 'services.dart';
import 'contact.dart';
import 'offline_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('شفا باذن اللہ شعیب نوری کلینک'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png', height: 120),
            const SizedBox(height: 12),
            const Text(
              'خوش آمدید — یہ ایپ مکمل طور پر آف لائن مواد دکھانے اور بنیادی فیچرز کے ساتھ تیار ہے۔',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.medical_services),
              label: const Text('سروسز'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ServicesScreen())),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.description),
              label: const Text('آف لائن مواد'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineContentScreen())),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.contact_mail),
              label: const Text('رابطہ'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ContactScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
