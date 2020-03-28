import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todolistapp/app/shared/widgets/text_widgets.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String phoneNumber;
  String smsCode;
  String verificationId;

  Future<void> verifyPhone() async {


    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this.verificationId = verId;
    };

    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
      this.verificationId = verId;
    };

    final PhoneVerificationCompleted verificationCompleted = (AuthCredential credential) {
      print(credential.toString());
    };

    final PhoneVerificationFailed verificationFalied = (AuthException exception) {
      print(exception.toString());
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,
      timeout: const Duration(seconds: 5),
      verificationFailed: verificationFalied,
      verificationCompleted: verificationCompleted,
    );
  }

  Future<bool> smsCodeDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Enter sms code'),
            content: TextField(
              onChanged: (value) {
                this.smsCode = value;
              },
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              FlatButton(onPressed: () {
                FirebaseAuth.instance.currentUser().then((user) {
                  if(user != null) {
                    print(user.toString());
//                    Navigator.of(context).pop();
//                    Navigator.of(context).pushReplacementNamed('/homepage');
                  } else {
                    Navigator.of(context).pop();
                  }
                });
              }, child: Text('Done')
              ),
            ],
          );
        }
    );
  }

  signIn() async {

    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: verificationId,
      smsCode: smsCode
    );

    var user = await FirebaseAuth.instance.signInWithCredential(credential);
    print(user.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80.0,),
            TitleWidget('Bem vindo'),
            SubTitleWidget('Faca login para continuar')
          ],
        ),
      ),
    );
  }
}
