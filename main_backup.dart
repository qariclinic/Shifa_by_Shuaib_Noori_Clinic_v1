import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const SalatWatchApp());
}

class SalatWatchApp extends StatelessWidget {
  const SalatWatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SalatWatch',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      home: const ClockPage(),
    );
  }
}

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  late Timer _timer;
  DateTime _now = DateTime.now();
  bool _showHijri = false;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formattedTime() {
    return DateFormat('hh:mm:ss a').format(_now);
  }

  String _formattedDate() {
    return DateFormat('EEEE, d MMMM y').format(_now);
  }

  // Placeholder Hijri converter -- for accurate Hijri use a package or server API
  String _hijriPlaceholder() {
    // Simple approximate: subtract 622 years and adjust — NOT accurate!
    final approxYear = _now.year - 622;
    return 'هجری (تقریبی): ${approxYear}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _formattedTime(),
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                _formattedDate(),
                style: const TextStyle(color: Colors.white70, fontSize: 18),
              ),
              const SizedBox(height: 16),
              if (_showHijri)
                Text(
                  _hijriPlaceholder(),
                  style: const TextStyle(color: Colors.amberAccent, fontSize: 18),
                ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _showHijri = !_showHijri;
                      });
                    },
                    child: Text(_showHijri ? 'Hide Hijri' : 'Show Hijri'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      // Toggle 24/12 could be implemented later
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Customize time format in settings')),
                      );
                    },
                    child: const Text('Settings'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
