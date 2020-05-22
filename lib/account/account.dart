import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Container(),
          flex: 2,
        ),
        Expanded(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 16, right: 16),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 64,
                        ),
                        Text(
                          "Bright Mabuza",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "mabuza6@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        Text(
                          "065 831 4248",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .54,
                          child: ListView(
                            children: [
                              InkWell(
                                splashColor: Colors.teal.shade200,
                                onTap: () => {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 16, right: 12),
                                  padding: EdgeInsets.only(top: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.notifications,
                                        color: Colors.grey.shade500,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        "Notifications",
                                        style: TextStyle(color: Colors.grey.shade500),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Icon(
                                        Icons.navigate_next,
                                        color: Colors.grey.shade500,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.teal.shade200,
                                onTap: () => {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 16, right: 12),
                                  padding: EdgeInsets.only(top: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.exit_to_app,
                                        color: Colors.grey.shade500,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        "Logout",
                                        style: TextStyle(color: Colors.grey.shade500),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Icon(
                                        Icons.navigate_next,
                                        color: Colors.grey.shade500,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.shade400, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/logo.png"),
                            fit: BoxFit.contain)),
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          flex: 75,
        ),
        Expanded(
          child: Container(),
          flex: 5,
        )
      ],
    );
  }
}
