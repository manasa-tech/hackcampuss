import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xff111827),
        child: ListView(
          children: const [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.deepPurple,
                    child: Text(
                      "HC",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "HackCampus",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      backgroundColor: const Color(0xff0A0F1E),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff111827),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: "Teams",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// TOP BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [

                      Builder(
                        builder: (context) => IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      ),

                      const SizedBox(width: 5),

                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff4F46E5),
                              Color(0xff8B5CF6),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "HC",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      const Text(
                        "HackCampus",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30,
                      ),

                      Positioned(
                        right: 2,
                        top: 2,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// SEARCH BAR
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff111827),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText:
                        "Search hackathons, domains, colleges...",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              /// BANNER
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff4F46E5),
                      Color(0xff7C3AED),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [

                            const Text(
                              "Build. Innovate. Conquer.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 12),

                            const Text(
                              "Discover hackathons,\nbuild amazing projects\nand stand out!",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),

                            const SizedBox(height: 20),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.white,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Explore Now",
                                style: TextStyle(
                                  color:
                                      Colors.deepPurple,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Icon(
                        Icons.emoji_events,
                        color: Colors.amber,
                        size: 120,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              /// UPCOMING
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: const [

                  Text(
                    "Upcoming Hackathons",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              buildHackathonCard(
                "HackMIT 6.0",
                "MIT Mysore",
                "AI/ML",
                "₹1,00,000",
                "10-12 May",
              ),

              buildHackathonCard(
                "CodeCarnival 2024",
                "BV College of Engg.",
                "Web Dev",
                "₹75,000",
                "15-18 May",
              ),

              buildHackathonCard(
                "NITK Surathkal Hack",
                "NITK Surathkal",
                "Open Innovation",
                "₹1,50,000",
                "24-26 May",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHackathonCard(
    String title,
    String college,
    String domain,
    String prize,
    String date,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xff111827),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [

          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.emoji_events,
              color: Colors.white,
              size: 35,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  college,
                  style: const TextStyle(
                    color: Colors.white60,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "$domain • $prize",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}