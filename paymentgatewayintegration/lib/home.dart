import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Razor Pay "),
        elevation: 0,
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://www.setaswall.com/wp-content/uploads/2017/05/Minimalist-Wallpaper-16-1620-x-2880.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child:
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            TextButton(
            child: Text(
            "Donate".toUpperCase(),
            style: TextStyle(fontSize: 14)
        ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)
                  )
              )
          ),
          onPressed: () async {
            try {
              await launch('https://rzp.io/l/yHZ1uBKrY7');
            } catch (e) {
              showDialog(
                  context: context,
                  builder: (_) =>
                      AlertDialog(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        title: Center(
                          child: Text(
                            'Unknown Error Occured',
                            style: TextStyle(color: Colors.red, fontSize: 18.0),
                          ),
                        ),
                        content: Center(
                          child: Text(
                            'Make Sure your Internet Connected Properly',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 18.0),
                          ),
                        ),
                      ));
            }
          }
    ),

    ]),

        ),
      )

    );

  }
}

