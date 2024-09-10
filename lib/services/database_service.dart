import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note_model.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Note>> getNotes() async {
    var snapshot = await _db.collection('notes').get();
    return snapshot.docs.map((doc) => Note.fromSnapshot(doc)).toList();
  }

  void addNote(String title, String description) {
    _db.collection('notes').add({
      'title': title,
      'description': description,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
