import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PolicyTrackingScreen extends StatelessWidget {
  //Sample data for promises, legislation and reforms
  final List<Map<String, String>> promises = [
    {
      'title': 'Youth Employment Program',
      'status': 'In Progress',
      'link': 'https://example.com'
    },
    {
      'title': 'Affordable Housing',
      'status': 'Completed',
      'link': 'https://example.com'
    },
  ];

  final List<Map<string, String>> legislation = [
    {
      'title': 'Health Insurance Bill',
      'status': 'Under Review',
      'link': 'https://example.com'
    },
    {
      'title': 'Education Reform Act',
      'status': 'Passed',
      'link': 'https://example.com'
    }
  ]
}