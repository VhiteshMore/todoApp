import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_to_do_list/const/colors.dart';

import '../widgets/stream_note_widget.dart';
import 'add_note_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

bool show = true;

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      floatingActionButton: Visibility(
        visible: show,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddNoteScreen(),
            ));
          },
          backgroundColor: colorIndiaBlue,
          child: Icon(Icons.add, size: 30),
        ),
      ),
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                show = true;
              });
            }
            if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                show = false;
              });
            }
            return true;
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                    },
                    child: Icon(Icons.login_outlined, size: 35,),
                  )
                ],
              ),
              SizedBox(height: 20,),
              StreamNoteWidget(false),
              // Text(
              //   'isDone',
              //   style: TextStyle(
              //       fontSize: 16,
              //       color: Colors.grey.shade500,
              //       fontWeight: FontWeight.bold),
              // ),
              StreamNoteWidget(true),
            ],
          ),
        ),
      ),
    );
  }
}
