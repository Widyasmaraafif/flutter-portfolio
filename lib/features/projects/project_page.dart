import 'package:flutter/material.dart';
import 'project_model.dart';
import '../../widgets/project_card.dart';
import 'project_detail_page.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projects')),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ProjectCard(
              project: project,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProjectDetailPage(project: project),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
