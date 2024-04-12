import 'package:flutter/material.dart';
import 'package:my_app/screens/chat.dart';
import 'package:my_app/screens/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Utama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 177, 114, 232),
        title: Center(
          child: Image.asset(
            'assets/images/logo_aplikasi.png',
            width: 50, 
            height: 50, 
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), 
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                _buildListItem(
                  'Healthy Food',
                  'assets/images/logo_makanan.png',
                  'Healthy food is food that is good for health. It provides essential nutrients and promotes overall well-being.',
                ),
                _buildListItem(
                  'Meditation',
                  'assets/images/logo_meditasi.png',
                  'Meditation is a practice where an individual uses a technique – such as mindfulness or focusing the mind on a particular object, thought, or activity – to train attention and awareness, and achieve a mentally clear and emotionally calm and stable state.',
                ),
                _buildListItem(
                  'Medicare',
                  'assets/images/logo_perawatan.png',
                  'Medicare refers to the system of national health insurance for people aged 65 and over in the United States, providing them with access to medical and hospital care.',
                ),
                _buildListItem(
                  'Workout',
                  'assets/images/logo_workout.png',
                  'Workout is a physical exercise consisting of repetitive movements that are performed to improve or maintain physical fitness and overall health.',
                ),
                _buildListItem(
                  'Jogging',
                  'assets/images/logo_jogging.png',
                  'Jogging is a form of running at a slow or leisurely pace. It is an aerobic exercise that helps improve cardiovascular health and burn calories.',
                ),
                _buildListItem(
                  'Habbit',
                  'assets/images/logo_habit.png',
                  'Habit refers to a routine or behavior that is repeated regularly and tends to occur subconsciously. Developing good habits is essential for maintaining a healthy lifestyle.',
                ),
                _buildListItem(
                  'Lifestyle',
                  'assets/images/logo_lifestyle.png',
                  'Lifestyle encompasses the way individuals live and includes their behaviors, attitudes, values, and habits. Adopting a healthy lifestyle can lead to improved overall well-being and longevity.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(String title, String imagePath, String description) {
    return ListTile(
      leading: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(title),
      subtitle: Text(description),
      onTap: () {
          },
    );
  }
}
