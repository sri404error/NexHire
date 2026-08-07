import 'package:flutter/material.dart';
import 'create_job_screen.dart';
import 'applicants_screen.dart';

class FounderDashboard extends StatelessWidget {
  const FounderDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FC),

      appBar: AppBar(
        title: const Text("Founder Dashboard"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Your Startup",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(
                Icons.work,
                color: Colors.deepPurple,
              ),
              title: const Text("Flutter Developer"),
              subtitle: const Text("25 Applications"),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ApplicantsScreen(),
                    ),
                  );
                },
                child: const Text("View"),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(
                Icons.memory,
                color: Colors.blue,
              ),
              title: const Text("Embedded Engineer"),
              subtitle: const Text("18 Applications"),
            ),
          ),

          const SizedBox(height: 40),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Create New Job"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateJobScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}