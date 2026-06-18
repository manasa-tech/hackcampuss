import 'package:flutter/material.dart';
import 'package:hackcampuss/screens/complete_register.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0F1E),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu, color: Colors.white),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.code, color: Colors.white),
                      ),

                      const SizedBox(width: 10),

                      const Text(
                        "HackCampus",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // SEARCH BAR
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xff161F35),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const TextField(
                  style: TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.white54),

                    hintText: "Search hackathons, colleges...",
                    hintStyle: TextStyle(color: Colors.white54),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // HERO BANNER
              Container(
                height: 200,
                width: double.infinity,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),

                  gradient: const LinearGradient(
                    colors: [Color(0xff4338CA), Color(0xff7C3AED)],
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Build.\nInnovate.\nConquer.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Discover hackathons and build amazing projects.",
                        style: TextStyle(color: Colors.white70),
                      ),

                      const Spacer(),

                      ElevatedButton(
                        onPressed: () {},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),

                        child: const Text(
                          "Explore Now",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Categories",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  categoryChip("AI/ML"),
                  categoryChip("Web Dev"),
                  categoryChip("Cloud"),
                  categoryChip("Cyber"),
                  categoryChip("UI/UX"),
                  categoryChip("Blockchain"),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "Featured Hackathons",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              hackathonCard("HackMIT 6.0", "MIT Mysore", "₹1,00,000"),

              hackathonCard("CodeCarnival 2024", "BV College", "₹75,000"),

              hackathonCard("NITK Hack", "NITK Surathkal", "₹1,50,000"),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const CompleteProfileScreen(),
    ),
  );
},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),

                  child: const Text(
                    "I'm a Participant",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: OutlinedButton(
                  onPressed: () {
                    // Navigate to Organizer Dashboard
                  },

                  child: const Text(
                    "I'm an Organizer",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  static Widget categoryChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

      decoration: BoxDecoration(
        color: const Color(0xff161F35),
        borderRadius: BorderRadius.circular(25),
      ),

      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  static Widget hackathonCard(String title, String college, String prize) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: const Color(0xff161F35),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,

            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),

            child: const Icon(Icons.emoji_events, color: Colors.white),
          ),

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

                Text(college, style: const TextStyle(color: Colors.white60)),

                const SizedBox(height: 5),

                Text(
                  prize,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
