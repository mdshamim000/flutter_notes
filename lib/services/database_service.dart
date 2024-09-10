import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note_model.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Fetch all notes from Firestore
  Future<List<Note>> getNotes() async {
    try {
      var snapshot = await _db.collection('notes').get();
      return snapshot.docs.map((doc) => Note.fromSnapshot(doc)).toList();
    } catch (e) {
      print('Error fetching notes: $e');
      return [];
    }
  }

  // Add a new note to Firestore
  Future<void> addNote(String title, String description) async {
    try {
      await _db.collection('notes').add({
        'title': title,
        'description': description,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Error adding note: $e');
    }
  }
}
