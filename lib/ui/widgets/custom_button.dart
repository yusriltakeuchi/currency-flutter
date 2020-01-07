import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  IconData icon;
  Color color;
  Function onClick;

  CustomButton({
    this.title, this.icon,
    this.color, this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Center(
        child: RaisedButton(
          color: color,
          onPressed: () => onClick(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: Colors.white,),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}