import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/presentation/widgets/task_card_widget.dart';
import '../../domain/datasource/firestore_datasource.dart';

class StreamNoteWidget extends StatelessWidget {
  bool done;
  StreamNoteWidget(this.done, {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirestoreDatasource().stream(done),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final noteslist = FirestoreDatasource().getNotes(snapshot);
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final note = noteslist[index];
              return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    FirestoreDatasource().delet_note(note.id);
                  },
                  child: TaskCardWidget(note));
            },
            itemCount: noteslist.length,
          );
        });
  }
}
