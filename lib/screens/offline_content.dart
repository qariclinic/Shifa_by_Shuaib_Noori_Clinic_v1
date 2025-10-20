import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class OfflineContentScreen extends StatefulWidget {
  const OfflineContentScreen({super.key});

  @override
  State<OfflineContentScreen> createState() => _OfflineContentScreenState();
}

class _OfflineContentScreenState extends State<OfflineContentScreen> {
  String content = 'Loading...';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final txt = await rootBundle.loadString('assets/data/patient_sample.txt');
    setState(() { content = txt; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('آف لائن مواد')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(child: Text(content, style: const TextStyle(fontSize: 16), textAlign: TextAlign.right)),
      ),
    );
  }
}
