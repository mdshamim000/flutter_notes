import 'package:get/get.dart';
import '../models/note_model.dart';
import '../services/database_service.dart';

class NoteController extends GetxController {
  var notes = <Note>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchNotes();
  }

  void fetchNotes() async {
    isLoading.value = true;
    notes.value = await DatabaseService().getNotes();
    isLoading.value = false;
  }

  void addNote(String title, String description) {
    DatabaseService().addNote(title, description);
    fetchNotes();
  }
}
