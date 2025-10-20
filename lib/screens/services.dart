import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      'Consultation - طبی مشاورت',
      'Herbal Remedies - جڑی بوٹیوں کے علاج',
      'Spiritual Healing - روحانی شفا',
      'Follow-up care - فالو اپ'
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('سروسز')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: services.length,
        itemBuilder: (context, i) => Card(
          child: ListTile(
            title: Text(services[i]),
            subtitle: const Text('تفصیل کے لیے دبا کر کھولیں'),
            onTap: () => showDialog(context: context, builder: (_) => AlertDialog(
              title: Text(services[i]),
              content: const Text('یہاں سروس کی مکمل تفصیل رکھی جا سکتی ہے۔'),
              actions: [TextButton(onPressed: ()=>Navigator.pop(context), child: const Text('بند کریں'))],
            )),
          ),
        ),
      ),
    );
  }
}
