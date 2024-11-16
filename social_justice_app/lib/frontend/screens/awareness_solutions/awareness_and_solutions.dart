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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorrs.deepPurpleAccent,
        title: const Center(child: Text('Awareness & Solutions')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              //Awareness Section
              buildAwarenessSection(),
              const SizedBox(height: 20),

              //Solution submission Section
              buildAwarenessSection(),
              const SizedBox(height: 20),

              //View Suggested Solutions Sections
            ],
          ),),
      ),
    )
  }
    }