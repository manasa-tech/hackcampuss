import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  int currentStep = 0;

  final PageController pageController = PageController();

  final List<String> skills = [
    "Flutter",
    "Python",
    "AI/ML",
    "Web Dev",
    "Cyber Security",
    "Cloud",
    "UI/UX",
    "Blockchain",
  ];

  List<String> selectedSkills = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07111F),

      appBar: AppBar(
        backgroundColor: const Color(0xff07111F),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Complete Your Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Column(
        children: [
          const SizedBox(height: 10),

          /// STEP INDICATOR
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              stepCircle(1),
              stepLine(),
              stepCircle(2),
              stepLine(),
              stepCircle(3),
              stepLine(),
              stepCircle(4),
            ],
          ),

          const SizedBox(height: 20),

          Expanded(
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                personalInfoPage(),
                skillsPage(),
                socialLinksPage(),
                reviewPage(),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                if (currentStep > 0)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentStep--;
                        });

                        pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      style: ElevatedButton.styleFrom(
  backgroundColor: const Color(0xff7B4DFF),
  elevation: 10,
  shadowColor: const Color(0xff7B4DFF),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
  ),
  minimumSize: const Size(
    double.infinity,
    55,
  ),
),
                      child: const Text("Previous"),
                    ),
                  ),

                if (currentStep > 0) const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentStep < 3) {
                        setState(() {
                          currentStep++;
                        });

                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Profile Submitted")),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff7B4DFF),
                      minimumSize: const Size(double.infinity, 55),
                    ),
                    child: Text(
                      currentStep == 3 ? "Submit Profile" : "Save & Continue",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // -----------------------------
  // STEP CIRCLE
  // -----------------------------

  Widget stepCircle(int step) {
    bool active = currentStep + 1 >= step;

    return CircleAvatar(
      radius: 18,
      backgroundColor: active ? const Color(0xff7B4DFF) : Colors.grey.shade800,
      child: Text("$step", style: const TextStyle(color: Colors.white)),
    );
  }

  Widget stepLine() {
    return Container(width: 45, height: 2, color: Colors.grey.shade700);
  }

  // -----------------------------
  // PERSONAL INFO
  // -----------------------------

  Widget personalInfoPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
  height: 120,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
      colors: [
        Color(0xff7B4DFF),
        Color(0xff4F8CFF),
      ],
    ),
  ),
),

const SizedBox(height: 20),

const CircleAvatar(
  radius: 50,
  backgroundColor: Colors.white,
  child: Icon(
    Icons.person,
    size: 50,
    color: Color(0xff7B4DFF),
  ),
),
          
          const SizedBox(height: 25),

          buildField("Full Name",Icons.person);
          buildField("Email", Icons.email_outlined);
          buildField("Phone Number", Icons.phone_android);
buildField("USN / Roll Number", Icons.badge);
          buildDropdown(
  label: "College",
  icon: Icons.school,
  items: [
    "VVCE Mysore",
    "MIT Mysore",
    "NIE Mysore",
    "SJCE Mysore",
    "SEA College of Engineering and Technology",
    "JSS Science and Technology University",
    "Maharaja Institute of Technology",
    "ATME College of Engineering",
  ],
)
          buildDropdown(
  label: "Degree",
  icon: Icons.workspace_premium,
  items: [
    "B.E",
    "B.Tech",
    "BCA",
    "B.Sc",
    "MCA",
    "M.Tech",
    "MBA",
    "Other",
  ],
),
          buildDropdown(
  label: "Branch",
  icon: Icons.computer,
  items: [
    "Computer Science",
    "Information Science",
    "AI & ML",
    "Data Science",
    "Cyber Security",
    "Electronics",
    "Electrical",
    "Mechanical",
    "Civil",
    "Other",
  ],
),
          buildDropdown(
            label: "Year",
            icon: Icons.calendar_month,
            items: ["1st Year", "2nd Year", "3rd Year", "4th Year"],
          ),
          buildField("USN / Roll Number",Icons.badge),
          buildField("CGPA", Icons.star),
buildDropdown(
            label: "Semeter",
            icon: Icons.book,
            items: ["1st Sem", "2nd Sem", "3rd Sem", "4th Sem","5th Sem","6th Sem","7th Sem","8th Sem"],
          ),
buildField("Graduation Year", Icons.calendar_today),

const SizedBox(height: 10),

Container(
  width: double.infinity,
  height: 60,
  decoration: BoxDecoration(
    color: const Color(0xff121D32),
    borderRadius: BorderRadius.circular(18),
    border: Border.all(
      color: Colors.white.withValues(alpha: 0.08),
    ),
  ),
  child: TextButton.icon(
    onPressed: () {
      // optional upload logic
    },
    icon: const Icon(
      Icons.upload_file,
      color: Color(0xff7B4DFF),
    ),
    label: const Text(
      "Upload Resume (Optional)",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
),

const SizedBox(height: 6),

const Text(
  "You can skip this step. PDF preferred.",
  style: TextStyle(
    color: Colors.white54,
    fontSize: 12,
  ),
),
        ],
      ),
   
    );
  }
  

  // -----------------------------
  // SKILLS PAGE
  // -----------------------------

  Widget skillsPage() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select Your Skills",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((skill) {
              return FilterChip(
                selected: selectedSkills.contains(skill),
                label: Text(skill),

                selectedColor: const Color(0xff7B4DFF),

                labelStyle: TextStyle(
                  color: selectedSkills.contains(skill)
                      ? Colors.white
                      : Colors.black,
                ),

                onSelected: (value) {
                  setState(() {
                    if (value) {
                      selectedSkills.add(skill);
                    } else {
                      selectedSkills.remove(skill);
                    }
                  });
                },
              );
            }).toList(),
          ),

          const SizedBox(height: 25),

          buildField("Add Custom Skill"),
        ],
      ),
    );
  }

  // -----------------------------
  // SOCIAL LINKS
  // -----------------------------

  Widget socialLinksPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          buildField("GitHub Profile", Icons.code);
buildField("LinkedIn Profile", Icons.business_center);
buildField("Portfolio Website", Icons.language);
buildField("LeetCode", Icons.psychology);
buildField("CodeChef", Icons.restaurant_menu);
buildField("HackerRank", Icons.terminal);
        ],
      ),
    );
  }

  // -----------------------------
  // REVIEW PAGE
  // -----------------------------

  Widget reviewPage() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.check_circle, color: Colors.green, size: 120),

          SizedBox(height: 20),

          Text(
            "Review your information before submitting.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }

  // -----------------------------
  // TEXT FIELD
  // -----------------------------

  Widget buildField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        style: const TextStyle(color: Colors.white),

        decoration: InputDecoration(
          labelText: label,

          labelStyle: const TextStyle(color: Colors.white70),

          filled: true,

          fillColor: const Color(0xff101B2E),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
Widget buildField(
  String label,
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.deepPurple,
        ),
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.white70,
        ),
        filled: true,
        fillColor: const Color(0xff101B2E),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
Widget buildDropdown({
  required String label,
  required IconData icon,
  required List<String> items,
}) {
  String? selectedValue;

  return StatefulBuilder(
    builder: (context, setLocalState) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: DropdownButtonFormField<String>(
          initialValue: selectedValue,
          dropdownColor: const Color(0xff121D32),

          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),

          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: const Color(0xff7B4DFF),
            ),
            labelText: label,
            labelStyle: const TextStyle(
              color: Colors.white70,
            ),
            filled: true,
            fillColor: const Color(0xff121D32),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(
                color: Colors.white.withValues(alpha :0.08),
              ),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                color: Color(0xff7B4DFF),
                width: 2,
              ),
            ),
          ),

          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }).toList(),

          onChanged: (value) {
            setLocalState(() {
              selectedValue = value;
            });
          },
        ),
      );
    },
  );
}
