
import 'package:todolistapp/app/modules/menu/models/category_model.dart';

abstract class ICategoryRepository {

  Stream<List<CategoryModel>> listAll();

}