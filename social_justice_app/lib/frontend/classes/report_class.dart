import 'dart:io';
import 'package:flutter/material.dart';

class ReportDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> report;

  const ReportDetailsScreen({super.key, required this.report});

  bool _isValidUrl(String url) {
    final uri = Uri.tryParse(url);
    return uri != null && (uri.isScheme('http') || uri.isScheme('https'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(report['title'] ?? 'Report Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              report['title'] ?? 'No title',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Verified: ${report['verified'] ? "Yes" : "No"}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            if (report['media'] != null)
              _isValidUrl(report['media'])
                  ? Image.network(
                    report['media'],
                  )
          ],
        ),
      )
    )
  }
}