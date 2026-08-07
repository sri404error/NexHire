import 'package:flutter/material.dart';
import 'role_selection_screen.dart';

class WelcomePrototypeScreen extends StatelessWidget {
  const WelcomePrototypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.rocket_launch,
                    color: Colors.blue,
                    size: 60,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "NexHire is a prototype developed for this hackathon to demonstrate how Artificial Intelligence can transform the recruitment process by connecting talented students with innovative startups.\n\n"
                  "This application represents our Minimum Viable Product (MVP) and showcases the core concept and user experience. Future versions will include advanced AI resume analysis, real-time collaboration, secure cloud infrastructure, personalized recommendations, intelligent hiring analytics, and seamless recruitment automation.\n\n"
                  "We hope you enjoy exploring our prototype and appreciate your valuable time and feedback.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white70,
                    height: 1.7,
                  ),
                ),

                const SizedBox(height: 35),

                const Divider(
                  color: Colors.white24,
                  thickness: 1,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Team NexHire",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "\"Connecting Talent. Empowering Startups.\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.lightBlueAccent,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Developed using Flutter 💙",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Hackathon Prototype • 2026",
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const RoleSelectionScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text(
                      "Start Demo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}