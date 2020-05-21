import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trackit/auth/login/login.dart';
import 'package:trackit/core/home-page/home-page.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _newFocusNode = FocusNode();
  final FocusNode _newFocusNode1 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromRGBO(16, 39, 51, 1),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 1000.0,
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 60.0),
                children: [
                  Image(
                    image: AssetImage("assets/logo.png"),
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.height / 4,
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                          child: TextFormField(
                              autocorrect: false,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Full Name",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context)
                                    .requestFocus(_newFocusNode);
                              }),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                          child: TextFormField(
                              autofocus: false,
                              focusNode: _newFocusNode,
                              autocorrect: false,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "E-mail",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context)
                                    .requestFocus(_newFocusNode1);
                              }),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                          child: TextFormField(
                            autofocus: false,
                            initialValue: "",
                            textInputAction: TextInputAction.done,
                            focusNode: _newFocusNode1,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(49, 39, 79, 1),
                    ),
                    child: RaisedButton(
                      elevation: 1.0,
                      onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()),
                            (Route<dynamic> route) => false,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Color.fromRGBO(49, 39, 79, 1),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/login'),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an Account? ',
                              style: TextStyle(
                                color: Colors.pink[200],
                              ),
                            ),
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                color: Colors.pink[200],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}