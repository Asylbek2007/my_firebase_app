class Workout {
  String? author;
  String? description;
  final String level;
  final String title;

  Workout({
    required this.title,
    this.author,
    this.description,
    required this.level,
  });
}
