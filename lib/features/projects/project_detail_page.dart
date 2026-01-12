import 'package:flutter/material.dart';
import 'project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailPage extends StatelessWidget {
  final Project project;

  const ProjectDetailPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(project.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(project.image),
            const SizedBox(height: 20),
            Text(project.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              'Tech Stack',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: project.tech.map((t) => Chip(label: Text(t))).toList(),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () async {
                final uri = Uri.parse(project.githubUrl);
                if (await canLaunchUrl(uri)) {
                  launchUrl(uri);
                }
              },
              icon: const Icon(Icons.code),
              label: const Text('View on GitHub'),
            ),
          ],
        ),
      ),
    );
  }
}
