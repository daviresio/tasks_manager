
import 'package:cloud_firestore/cloud_firestore.dart';

class TaskModel {
  String title;
  String description;
  DocumentReference reference;

  TaskModel({this.title = '', this.description = '', this.reference});

  Future save() async {
    var data = {'title': title, 'description': description};
    if(reference == null) {
      reference = await Firestore.instance.collection('task').add(data);
    } else {
      reference.updateData(data);
    }
  }

  @override
  String toString() {
    return 'TaskModel{title: $title, description: $description, reference: $reference}';
  }


}