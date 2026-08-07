import 'package:flutter/material.dart';
import 'job_details_screen.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FC),

      appBar: AppBar(
        title: const Text("Student Dashboard"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          const Text(
            "Recommended Startups",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(
                Icons.rocket_launch,
                color: Colors.blue,
              ),
              title: const Text("AI Startup"),
              subtitle: const Text("Flutter Developer Intern"),

              trailing: ElevatedButton(
                child: const Text("Apply"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const JobDetailsScreen(),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 20),

          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(
                Icons.memory,
                color: Colors.deepPurple,
              ),
              title: const Text("ChipTech"),
              subtitle: const Text("Embedded Systems Intern"),

              trailing: ElevatedButton(
                child: const Text("Apply"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const JobDetailsScreen(),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 30),

          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(
                Icons.code,
                color: Colors.green,
              ),
              title: const Text("NextGen Labs"),
              subtitle: const Text("Full Stack Developer Intern"),

              trailing: ElevatedButton(
                child: const Text("Apply"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const JobDetailsScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}