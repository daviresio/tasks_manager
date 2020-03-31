import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todolistapp/app/modules/menu/models/category_model.dart';
import 'package:todolistapp/app/modules/menu/repository/category_repository_interface.dart';

class CategoryRepository implements ICategoryRepository {

  final Firestore firestore;

  CategoryRepository(this.firestore);

  @override
  Stream<List<CategoryModel>> listAll() {
    return firestore.collection('category').snapshots().map((query) {
      return query.documents.map((doc) {
        return CategoryModel.fromDocument(doc);
      }).toList();
    });
  }

}