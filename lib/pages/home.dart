import 'package:flutter/material.dart';
import 'package:mid_project/controller/create_message.dart';
import 'package:mid_project/controller/message.dart';
import '../drawer/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Diary'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Message(
                title: 'First chapter',
                text: 'What you need is my Stand "The World".What you can find beyond the powers of my Stand is where you need to go in order to find Heaven.'
            ),
            Message(
                title: 'Second chapter',
                text: 'It is unknown how DIO came to know the recipe for attaining Heaven or how he could use his Stand to create a new life form.'
            ),
            Message(
                title: 'Third chapter',
                text: 'DIO mentions he would engrave the 14 phrases on his Stand The World so that he wouldnt forget them. Where on The World he engraved them is unknown.'
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('Add'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Create()),
            );
          },
        ),
        drawer: const Drawerr()
    );
  }
}