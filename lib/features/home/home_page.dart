import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_portfolio/features/projects/project_page.dart';
import '../../widgets/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // PROFILE
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Widyasmara Afif',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ).animate().fade().slideX(),

              const SizedBox(height: 30),

              // ABOUT
              const SectionTitle(title: 'About Me'),
              const Text(
                'Informatics graduate with a focus on Flutter development. '
                'Experienced in building clean UI, scalable architecture, '
                'and mobile-first applications.',
              ).animate().fade(delay: 200.ms),

              const SizedBox(height: 20),

              // SKILLS
              const SectionTitle(title: 'Skills'),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('Laravel')),
                  Chip(label: Text('UI/UX')),
                ],
              ).animate().fade(delay: 400.ms),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ProjectPage()),
                  );
                },
                child: const Text('View Projects'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
