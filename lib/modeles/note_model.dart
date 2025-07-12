class NoteModel {
  final String title;
  final String content;
  final DateTime date = DateTime.now();
  NoteModel({required this.title, required this.content});
}
