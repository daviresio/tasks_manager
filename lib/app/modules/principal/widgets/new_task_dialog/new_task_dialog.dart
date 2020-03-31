import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todolistapp/app/modules/principal/models/task_model.dart';

Future<dynamic> showNewTaskDialog(BuildContext context, [TaskModel task]) => showDialog(context: context, builder: (_) {
  task ??= TaskModel();

  return AlertDialog(
    contentPadding: EdgeInsets.zero,
    content: Container(
      height: MediaQuery.of(context).size.height * .85,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: <Widget>[
          _forInTopTemplate(),
          _titleTextField(task),
          _description(task),
          _data(context),
          _members(),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Add Task', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
              onPressed: () async {
                try {
                  await task.save();
                  print(task.toString());
                  Navigator.of(context).pop();
                } catch(e) {
                  print(e);
                }
              },
            ),
          ),
        ],
      ),
    ),
  );
});


Widget _forInTopTemplate() {

  Widget _item(String label, String contentTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: <Widget>[
          Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 20.0, right: 20.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: Text(contentTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
          ),
        ],
      ),
    );
  }

    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _item('For', 'Assignee'),
          _item('In', 'Project'),
        ],
      ),
    );

  }

Widget _titleTextField(TaskModel task) {
  return TextFormField(
    onChanged: (value) => task.title = value,
    decoration: InputDecoration(
      hintText: 'Title',
      hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black87.withOpacity(.7)),
      border: InputBorder.none,
      contentPadding: EdgeInsets.only(left: 20.0, top: 0, bottom: 8.0, right: 12.0),
      filled: true,
      fillColor: Colors.grey[200],
    ),
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black87, height: 2.2),
  );
}



Widget _description(TaskModel task) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Description', style: TextStyle(color: Colors.black54, fontSize: 16.0, fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black54, width: .9),
                left: BorderSide(color: Colors.black54, width: .9),
                right: BorderSide(color: Colors.black54, width: .9),
              ),
            ),
            child: TextFormField(
              onChanged: (value) => task.description = value,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              maxLines: 5,
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey[400])
            ),
            child: Icon(Icons.attach_file, color: Colors.black54,),
          )
        ],
      ),
    );
  }


Widget _data(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      padding: EdgeInsets.only(top: 18.0, bottom: 18.0, left: 22.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: <Widget>[
          Text('Due Date', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                DateTime dataAtual = DateTime.now();
                showDatePicker(context: context, initialDate: dataAtual, firstDate: DateTime(dataAtual.year), lastDate: DateTime(dataAtual.year + 10));
              },
              child: Container(
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 6.0, bottom: 6.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(96, 116, 249, 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text('Anytime', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
    );

}


Widget _members() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Add Member', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 20.0, right: 20.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: Text('Anyone', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
          )
        ],
      ),
    );

}
