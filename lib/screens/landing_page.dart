import 'package:flutter/material.dart';
import 'home_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F1E),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "HackCampus",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  "Find • Join • Build • Win",
                  style: TextStyle(color: Colors.white60, fontSize: 16),
                ),
              ),

              const SizedBox(height: 30),

              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6D5DFF), Color(0xFFA855F7)],
                  ),
                ),

                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "🚀 India's Largest Student Hackathon Network",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Spacer(),

                      Text(
                        "Discover opportunities, build amazing projects and connect with innovators.",
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Why HackCampus?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              featureCard(
                Icons.emoji_events,
                "Hackathons",
                "Discover national and college-level hackathons.",
              ),

              featureCard(
                Icons.groups,
                "Team Building",
                "Find teammates based on skills and interests.",
              ),

              featureCard(
                Icons.workspace_premium,
                "Certificates",
                "Track participation and achievements.",
              ),

              featureCard(
                Icons.psychology,
                "AI Suggestions",
                "Get smart recommendations for events.",
              ),

              const SizedBox(height: 30),

              const Text(
                "Platform Statistics",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: statCard("500+", "Hackathons")),

                  const SizedBox(width: 12),

                  Expanded(child: statCard("10K+", "Students")),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(child: statCard("200+", "Colleges")),

                  const SizedBox(width: 12),

                  Expanded(child: statCard("100+", "Organizers")),
                ],
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 60,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6D5DFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  child: const Text(
                    "Explore Hackathons",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget featureCard(IconData icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFF161F35),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurpleAccent, size: 30),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(subtitle, style: const TextStyle(color: Colors.white60)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget statCard(String value, String title) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF161F35),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(title, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
