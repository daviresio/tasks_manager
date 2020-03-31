
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String title;
  String color;
  DocumentReference reference;

  CategoryModel({this.title = '', this.color = '', this.reference});

  factory CategoryModel.fromDocument(DocumentSnapshot doc) {
    return CategoryModel(
      title: doc['title'], color: doc['color'], reference: doc['reference']
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'color': color,
  };

  Future save() async {
    var data = {'title': title, 'color': color};
    if(reference == null) {
      reference = await Firestore.instance.collection('category').add(data);
    } else {
      reference.updateData(data);
    }
  }

 static List<CategoryModel> bootstrapCategory() {
    List<CategoryModel> categories = [
      CategoryModel(title: 'Personal', color: 'blue'),
      CategoryModel(title: 'Teamworks', color: 'red'),
      CategoryModel(title: 'Home', color: 'green'),
      CategoryModel(title: 'Meet', color: 'purple'),
    ];

    return categories;
  }

  @override
  String toString() {
    return 'CategoryModel{title: $title, color: $color, reference: $reference}';
  }


}

