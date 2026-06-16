import 'package:flutter/material.dart';
import 'package:hackcampuss/screens/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showDetails = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showDetails = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040B1F),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                // Logo
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: showDetails ? 140 : 120,
                  height: showDetails ? 140 : 120,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withValues(alpha: 0.5),
                        blurRadius: 40,
                        spreadRadius: 5,
                      ),
                    ],
                  ),

                  child: const Center(
                    child: Text(
                      "HC",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                AnimatedOpacity(
                  duration: const Duration(milliseconds: 800),
                  opacity: showDetails ? 1 : 0,

                  child: Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Hack",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Campus",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Find. Join. Build. Win.",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Your gateway to Hackathons across Karnataka & India",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white54, fontSize: 15),
                      ),

                      const SizedBox(height: 40),

                      SizedBox(
                        width: double.infinity,
                        height: 55,

                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LandingPage(),
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
                            "Get Started",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      SizedBox(
                        width: double.infinity,
                        height: 55,

                        child: OutlinedButton(
                          onPressed: () {},

                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white24),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),

                          child: const Text(
                            "I'm an Organizer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Powering Future Innovators 🚀",
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
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
