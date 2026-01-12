class Project {
  final String title;
  final String description;
  final String image;
  final List<String> tech;
  final String githubUrl;

  Project({
    required this.title,
    required this.description,
    required this.image,
    required this.tech,
    required this.githubUrl,
  });
}

final List<Project> projects = [
  Project(
    title: 'Flutter Portfolio App',
    description: 'Personal portfolio mobile app built with Flutter.',
    image: 'assets/projects/portfolio.png',
    tech: ['Flutter', 'Dart'],
    githubUrl: 'https://github.com/Widyasmaraafif/flutter-portfolio',
  ),
];
