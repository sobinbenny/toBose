library flutter_awesome_alert_box;

import 'package:flutter/material.dart';



class InfoBgAlertBox {
  final BuildContext context;
  final String title;
  final IconData icon;
  final String infoMessage;
  final Color titleTextColor;
  final Color messageTextColor;
  final Color buttonColor;
  final Color buttonTextColor;
  final String buttonText;
  InfoBgAlertBox(
      {this.context,
      this.title,
      this.infoMessage,
      this.titleTextColor,
      this.messageTextColor,
      this.buttonColor,
      this.buttonText,
      this.buttonTextColor,
      this.icon}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            contentPadding:
                const EdgeInsets.only(bottom: 0, left: 8, right: 8, top: 8),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.thumb_up,
                  color: titleTextColor ?? Colors.white,
                  size: 70.0,
                ),
                Flexible(
                    child: Text(
                  title ?? "Request Recieved",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: titleTextColor ?? Colors.white),
                )),
                SizedBox(
                  height: 12,
                ),
                 Flexible(
                  child: Text(
                    infoMessage ?? "We take our commitment to our users very seriously.Our customer executive will contact you shortly.",
                    style: TextStyle(color: messageTextColor ?? Colors.white70),
                  ),
                ),
                SizedBox(
                                    height: 13,
                                  ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  color: buttonColor ?? Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        buttonText ?? "Close",
                        style:
                            TextStyle(color: buttonTextColor ?? Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                                    height: 20,
                                  ),
              ],
            ),
          );
        });
  }
}



