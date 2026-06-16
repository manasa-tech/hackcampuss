import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F1E),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF111827),
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Teams"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome 👋",
                        style: TextStyle(color: Colors.white54),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "HackCampus",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF161F35),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Search Hackathons...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Featured Banner
              Container(
                width: double.infinity,
                height: 180,
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
                        "Featured Hackathon",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "HackMIT 2026",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Prize Pool ₹1,00,000",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCategory("AI/ML"),
                    buildCategory("Web Dev"),
                    buildCategory("Cyber"),
                    buildCategory("Blockchain"),
                    buildCategory("Cloud"),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Upcoming Hackathons",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              buildHackathonCard("HackMIT 2026", "MIT Mysore", "₹1,00,000"),

              buildHackathonCard("Code Carnival", "RVCE Bengaluru", "₹75,000"),

              buildHackathonCard("NITK Hackathon", "NITK Surathkal", "₹50,000"),

              buildHackathonCard(
                "VVCE Innovation Challenge",
                "VVCE Mysore",
                "₹25,000",
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String title) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF161F35),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget buildHackathonCard(String title, String college, String prize) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161F35),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15),
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
              ],
            ),
          ),

          Text(
            prize,
            style: const TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
