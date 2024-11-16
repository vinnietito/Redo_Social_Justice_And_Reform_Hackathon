import 'package:flutter/material.dart';

class AwarenessAndSolutions extends StatefulWidget {
  @override
  _AwarenessAndSolutionsScreenState createState() => 
      _AwarenessAndSolutionsScreenState();
}

class _AwarenessAndSolutionsScreenState
    extends State<AwarenessAndSolutionsScreen> {
  final TextEditingController _solutionController = TextEditingController();
  final List<Map<String, String>> suggestedSolutions = [];

  @override
  void dispose() {
    _solutionController.dispose();
    super.dispose();
  }
    }