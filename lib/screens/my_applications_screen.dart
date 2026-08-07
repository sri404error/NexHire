import 'package:flutter/material.dart';

class MyApplicationsScreen extends StatelessWidget {
  const MyApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Applications"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          Card(
            elevation: 4,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.work,
                  color: Colors.white,
                ),
              ),
              title: const Text("Flutter Developer Intern"),
              subtitle: const Text("TechNova Startup"),
              trailing: Chip(
                backgroundColor: Colors.orange.shade100,
                label: const Text("Under Review"),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Card(
            elevation: 4,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.work,
                  color: Colors.white,
                ),
              ),
              title: const Text("Embedded Systems Intern"),
              subtitle: const Text("ChipTech"),
              trailing: Chip(
                backgroundColor: Colors.green.shade100,
                label: const Text("Interview"),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Card(
            elevation: 4,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.work,
                  color: Colors.white,
                ),
              ),
              title: const Text("Backend Developer"),
              subtitle: const Text("NextGen Labs"),
              trailing: Chip(
                backgroundColor: Colors.red.shade100,
                label: const Text("Rejected"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}