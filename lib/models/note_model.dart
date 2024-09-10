import 'package:cloud_firestore/cloud_firestore.dart';

class Note {
  String title;
  String description;

  Note({
    required this.title,
    required this.description,
  });

  factory Note.fromSnapshot(DocumentSnapshot snap) {
    return Note(
      title: snap['title'],
      description: snap['description'],
    );
  }
}
