import 'package:flutter/material.dart';
import 'exercise_detail_page.dart';
import 'report_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MainContent(),
    const ReportPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0C2340), Color(0xFF005B96)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
          title: const Text(
            'FitnessHub',
            style: TextStyle(
              color: Color(0xFFFFD700),
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0C2340), Color(0xFF005B96)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        backgroundColor: Colors.black.withOpacity(0.8),
        selectedItemColor: const Color(0xFFFFD700),
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Report',
          ),
        ],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(
                  Icons.fitness_center,
                  size: 100,
                  color: Color(0xFFFFD700),
                ),
                const SizedBox(height: 20),
                const Text(
                  'FitnessHub',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFD700),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'EVERYBODY CAN GYMMING',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFD700),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.7,
            padding: const EdgeInsets.all(5),
            children: [
              CategoryCard(
                title: 'Abs Beginner',
                imagePath: 'assets/images/images.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseDetailPage(
                        category: 'Abs Beginner',
                        exercises: [
                          {
                            'image': 'assets/images/abs1.jpg',
                            'name': 'Plank Exercise',
                            'details': 'Plank is a core strengthening exercise that focuses on stability.',
                            'tips': 'Keep your back straight and avoid sagging your hips.',
                          },
                          {
                            'image': 'assets/images/pushup.jpg',
                            'name': 'Push Up',
                            'details': 'A push-up is a basic exercise for building upper body strength.',
                            'tips': 'Keep your arms shoulder-width apart and maintain a straight line from head to toe.',
                          },
                          {
                            'image': 'assets/images/legraises.jpg',
                            'name': 'Leg Raises',
                            'details': 'An exercise targeting the lower abs where you lie flat on your back and lift your legs straight up to a 90-degree angle, then slowly lower them without touching the ground.',
                            'tips': 'Keep your lower back pressed to the floor to avoid discomfort.',
                          },
                          {
                            'image': 'assets/images/mountainclimber.jpg',
                            'name': 'Mountain Climber',
                            'details': 'A full-body exercise that starts in a push-up position, bringing one knee toward your chest at a time in a running motion, engaging the core and increasing cardiovascular endurance.',
                            'tips': 'Maintain a steady pace and keep your core tight.',
                          },
                          {
                            'image': 'assets/images/crunches.jpg',
                            'name': 'Crunches',
                            'details': 'An ab exercise where you lie on your back with knees bent, then lift your upper body toward your knees by contracting your abs while keeping your lower back on the floor.',
                            'tips': 'Focus on lifting your upper back, not just your neck, to prevent strain.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                        ],
                      ),
                    ),
                  );
                },
              ),
              CategoryCard(
                title: 'Abs Advanced',
                imagePath: 'assets/images/image2.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseDetailPage(
                        category: 'Abs Advanced',
                        exercises: [
                          {
                            'image': 'assets/images/abs1.jpg',
                            'name': 'Plank',
                            'details': 'A variant of the plank focusing on obliques.',
                            'tips': 'Raise your hips and maintain a straight line from head to feet.',
                          },
                          {
                            'image': 'assets/images/pushup.jpg',
                            'name': 'Diamond Push-up',
                            'details': 'A push-up variation targeting the triceps.',
                            'tips': 'Bring your hands closer together in a diamond shape.',
                          },
                          {
                            'image': 'assets/images/crunches.jpg',
                            'name': 'Crunches',
                            'details': 'An ab exercise where you lie on your back with knees bent, then lift your upper body toward your knees by contracting your abs while keeping your lower back on the floor.',
                            'tips': 'Focus on lifting your upper back, not just your neck, to prevent strain.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/toetouches.jpg',
                            'name': 'Toe Touches',
                            'details': 'Lie on your back with your legs extended straight up. Reach your hands toward your toes as you lift your upper body off the floor, engaging your core, then return to the starting position.',
                            'tips': 'Raise your legs straight up and touch your toes with your hands, engaging your core.',
                          },
                          {
                            'image': 'assets/images/plankpushup.jpg',
                            'name': 'Plank To Pushup',
                            'details': 'Begin in a forearm plank position. Push up onto your hands one arm at a time, then return back down to your forearms, all while keeping your core tight to prevent any sagging.',
                            'tips': 'Move from a forearm plank to a push-up position by alternating arms, keeping your core engaged.',
                          },
                          {
                            'image': 'assets/images/dragonflag.jpg',
                            'name': 'Dragon Flag',
                            'details': 'Lie on a bench or flat surface and hold onto something stable behind your head. Raise your legs and torso to an upright position, then lower them slowly while keeping the rest of your body stiff and straight.',
                            'tips': 'Lower your body slowly while holding onto a stable surface, engaging your abs to control the descent.',
                          },
                          {
                            'image': 'assets/images/vup.jpg',
                            'name': 'V-Ups',
                            'details': 'Begin lying flat on your back with arms extended overhead. Simultaneously lift your legs and torso towards each other, trying to touch your toes, then lower back down slowly.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/sideplank.jpg',
                            'name': 'Side Plank',
                            'details': 'From a side plank position, with your body in a straight line, lift your top leg towards the ceiling while maintaining stability through your core and hips.',
                            'tips': 'Perform a side plank and lift your top leg for added challenge and stability.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                        ],
                      ),
                    ),
                  );
                },
              ),
              CategoryCard(
                title: 'Arm Beginner',
                imagePath: 'assets/images/image5.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseDetailPage(
                        category: 'Arm Beginner',
                        exercises: [
                          {
                            'image': 'assets/images/mountainclimber.jpg',
                            'name': 'Mountain Climber',
                            'details': 'A full-body exercise that starts in a push-up position, bringing one knee toward your chest at a time in a running motion, engaging the core and increasing cardiovascular endurance.',
                            'tips': 'Maintain a steady pace and keep your core tight.',
                          },
                          {
                            'image': 'assets/images/abs1.jpg',
                            'name': 'Plank',
                            'details': 'A variant of the plank focusing on obliques.',
                            'tips': 'Raise your hips and maintain a straight line from head to feet.',
                          },
                          {
                            'image': 'assets/images/pushup.jpg',
                            'name': 'Diamond Push-up',
                            'details': 'A push-up variation targeting the triceps.',
                            'tips': 'Bring your hands closer together in a diamond shape.',
                          },
                          {
                            'image': 'assets/images/crunches.jpg',
                            'name': 'Crunches',
                            'details': 'An ab exercise where you lie on your back with knees bent, then lift your upper body toward your knees by contracting your abs while keeping your lower back on the floor.',
                            'tips': 'Focus on lifting your upper back, not just your neck, to prevent strain.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/toetouches.jpg',
                            'name': 'Toe Touches',
                            'details': 'Lie on your back with your legs extended straight up. Reach your hands toward your toes as you lift your upper body off the floor, engaging your core, then return to the starting position.',
                            'tips': 'Raise your legs straight up and touch your toes with your hands, engaging your core.',
                          },
                          {
                            'image': 'assets/images/plankpushup.jpg',
                            'name': 'Plank To Pushup',
                            'details': 'Begin in a forearm plank position. Push up onto your hands one arm at a time, then return back down to your forearms, all while keeping your core tight to prevent any sagging.',
                            'tips': 'Move from a forearm plank to a push-up position by alternating arms, keeping your core engaged.',
                          },
                          {
                            'image': 'assets/images/dragonflag.jpg',
                            'name': 'Dragon Flag',
                            'details': 'Lie on a bench or flat surface and hold onto something stable behind your head. Raise your legs and torso to an upright position, then lower them slowly while keeping the rest of your body stiff and straight.',
                            'tips': 'Lower your body slowly while holding onto a stable surface, engaging your abs to control the descent.',
                          },
                          {
                            'image': 'assets/images/vup.jpg',
                            'name': 'V-Ups',
                            'details': 'Begin lying flat on your back with arms extended overhead. Simultaneously lift your legs and torso towards each other, trying to touch your toes, then lower back down slowly.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/sideplank.jpg',
                            'name': 'Side Plank',
                            'details': 'From a side plank position, with your body in a straight line, lift your top leg towards the ceiling while maintaining stability through your core and hips.',
                            'tips': 'Perform a side plank and lift your top leg for added challenge and stability.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                        ],
                      ),
                    ),
                  );
                },
              ),
              CategoryCard(
                title: 'Arm Advanced',
                imagePath: 'assets/images/image6.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseDetailPage(
                        category: 'Arm Advanced',
                        exercises: [
                         
                          {
                            'image': 'assets/images/pushup.jpg',
                            'name': 'Diamond Push-up',
                            'details': 'A push-up variation targeting the triceps.',
                            'tips': 'Bring your hands closer together in a diamond shape.',
                          },
                         
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/toetouches.jpg',
                            'name': 'Toe Touches',
                            'details': 'Lie on your back with your legs extended straight up. Reach your hands toward your toes as you lift your upper body off the floor, engaging your core, then return to the starting position.',
                            'tips': 'Raise your legs straight up and touch your toes with your hands, engaging your core.',
                          },
                          {
                            'image': 'assets/images/plankpushup.jpg',
                            'name': 'Plank To Pushup',
                            'details': 'Begin in a forearm plank position. Push up onto your hands one arm at a time, then return back down to your forearms, all while keeping your core tight to prevent any sagging.',
                            'tips': 'Move from a forearm plank to a push-up position by alternating arms, keeping your core engaged.',
                          },
                          {
                            'image': 'assets/images/dragonflag.jpg',
                            'name': 'Dragon Flag',
                            'details': 'Lie on a bench or flat surface and hold onto something stable behind your head. Raise your legs and torso to an upright position, then lower them slowly while keeping the rest of your body stiff and straight.',
                            'tips': 'Lower your body slowly while holding onto a stable surface, engaging your abs to control the descent.',
                          },
                          {
                            'image': 'assets/images/vup.jpg',
                            'name': 'V-Ups',
                            'details': 'Begin lying flat on your back with arms extended overhead. Simultaneously lift your legs and torso towards each other, trying to touch your toes, then lower back down slowly.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/sideplank.jpg',
                            'name': 'Side Plank',
                            'details': 'From a side plank position, with your body in a straight line, lift your top leg towards the ceiling while maintaining stability through your core and hips.',
                            'tips': 'Perform a side plank and lift your top leg for added challenge and stability.',
                          },
                          
                        ],
                      ),
                    ),
                  );
                },
              ),
              CategoryCard(
                title: 'Chest Beginner',
                imagePath: 'assets/images/image3.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseDetailPage(
                        category: 'Chest Beginner',
                        exercises: [
                          {
                            'image': 'assets/images/plank.jpg',
                            'name': 'Side Plank',
                            'details': 'A variant of the plank focusing on obliques.',
                            'tips': 'Raise your hips and maintain a straight line from head to feet.',
                          },
                          {
                            'image': 'assets/images/pushup.jpg',
                            'name': 'Diamond Push-up',
                            'details': 'A push-up variation targeting the triceps.',
                            'tips': 'Bring your hands closer together in a diamond shape.',
                          },
                        ],
                      ),
                    ),
                  );
                },
              ),
              CategoryCard(
                title: 'Chest Advanced',
                imagePath: 'assets/images/image4.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseDetailPage(
                        category: 'Chest Advanced',
                        exercises: [
                          {
                            'image': 'assets/images/abs1.jpg',
                            'name': 'Plank',
                            'details': 'A variant of the plank focusing on obliques.',
                            'tips': 'Raise your hips and maintain a straight line from head to feet.',
                          },
                          {
                            'image': 'assets/images/pushup.jpg',
                            'name': 'Diamond Push-up',
                            'details': 'A push-up variation targeting the triceps.',
                            'tips': 'Bring your hands closer together in a diamond shape.',
                          },
                          {
                            'image': 'assets/images/crunches.jpg',
                            'name': 'Crunches',
                            'details': 'An ab exercise where you lie on your back with knees bent, then lift your upper body toward your knees by contracting your abs while keeping your lower back on the floor.',
                            'tips': 'Focus on lifting your upper back, not just your neck, to prevent strain.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/toetouches.jpg',
                            'name': 'Toe Touches',
                            'details': 'Lie on your back with your legs extended straight up. Reach your hands toward your toes as you lift your upper body off the floor, engaging your core, then return to the starting position.',
                            'tips': 'Raise your legs straight up and touch your toes with your hands, engaging your core.',
                          },
                          {
                            'image': 'assets/images/plankpushup.jpg',
                            'name': 'Plank To Pushup',
                            'details': 'Begin in a forearm plank position. Push up onto your hands one arm at a time, then return back down to your forearms, all while keeping your core tight to prevent any sagging.',
                            'tips': 'Move from a forearm plank to a push-up position by alternating arms, keeping your core engaged.',
                          },
                          {
                            'image': 'assets/images/dragonflag.jpg',
                            'name': 'Dragon Flag',
                            'details': 'Lie on a bench or flat surface and hold onto something stable behind your head. Raise your legs and torso to an upright position, then lower them slowly while keeping the rest of your body stiff and straight.',
                            'tips': 'Lower your body slowly while holding onto a stable surface, engaging your abs to control the descent.',
                          },
                          {
                            'image': 'assets/images/vup.jpg',
                            'name': 'V-Ups',
                            'details': 'Begin lying flat on your back with arms extended overhead. Simultaneously lift your legs and torso towards each other, trying to touch your toes, then lower back down slowly.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                          {
                            'image': 'assets/images/sideplank.jpg',
                            'name': 'Side Plank',
                            'details': 'From a side plank position, with your body in a straight line, lift your top leg towards the ceiling while maintaining stability through your core and hips.',
                            'tips': 'Perform a side plank and lift your top leg for added challenge and stability.',
                          },
                          {
                            'image': 'assets/images/bicyclecrunches.jpg',
                            'name': 'Bicycle Crunches',
                            'details': 'A dynamic core exercise where you alternate bringing opposite elbows to knees while extending the opposite leg, mimicking a pedaling motion, engaging both the upper and lower abs.',
                            'tips': 'Rotate your torso fully and bring opposite elbows to knees.',
                          },
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
