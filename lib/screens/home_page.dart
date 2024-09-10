import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';
import '../models/note_model.dart';

class HomePage extends StatelessWidget {
  final NoteController noteController = Get.find<NoteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: Obx(() {
        if (noteController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: noteController.notes.length,
          itemBuilder: (context, index) {
            Note note = noteController.notes[index];
            return ListTile(
              title: Text(note.title),
              subtitle: Text(note.description),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add_note');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
