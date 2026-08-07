import 'package:flutter/material.dart';
import 'ai_analysis_screen.dart';

class ApplicantsScreen extends StatelessWidget {
  const ApplicantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Applicants"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ApplicantCard(
            name: "Rahul Sharma",
            role: "Flutter Developer",
            score: "96%",
          ),
          ApplicantCard(
            name: "Priya Das",
            role: "UI/UX Designer",
            score: "91%",
          ),
          ApplicantCard(
            name: "Arjun Kumar",
            role: "Embedded Systems",
            score: "88%",
          ),
        ],
      ),
    );
  }
}

class ApplicantCard extends StatelessWidget {
  final String name;
  final String role;
  final String score;

  const ApplicantCard({
    super.key,
    required this.name,
    required this.role,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 18),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(name),
        subtitle: Text(role),
        trailing: Chip(
          label: Text(score),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AIAnalysisScreen(),
            ),
          );
        },
      ),
    );
  }
}