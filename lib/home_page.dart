import 'package:flutter/material.dart';
import 'package:lesson1/setting_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('click'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: 
              (BuildContext context){
                return const Setting();
              },
            ),
          );
        },
      ),
    );
  }
}
