import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolistapp/app/modules/menu/models/category_model.dart';

class BootstrapApp {

  static const String APP_ALREADY_INITED = 'APP_ALREADY_INITED';

  Future bootstrap() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool alreadyInited = prefs.get('APP_ALREADY_INITED');

    if(alreadyInited == true) return;

    await createCategories();
  }

  static Future createCategories() async {
    var documents = await Firestore.instance.collection('category').getDocuments();

    if(documents.documents.length > 0) return;

    CategoryModel.bootstrapCategory().forEach((data) => Firestore.instance.collection('category').add(data.toJson()));
  }

}