import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),

                        ),

                      ],
                    )
                  ],
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Center(child: Text('Premium', style: TextStyle(fontSize: 26.0))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม All Topics
                        Expanded(
                          child: CategoryButton(
                            text: 'Full Access Lessons',
                            icon: Icons.map,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Popular
                        Expanded(
                          child: CategoryButton(
                            text: 'Unlock All Limitations',
                            icon: Icons.book,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Newest
                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics Available',
                            icon: Icons.book_sharp,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Advanced
                        Expanded(
                          child: CategoryButton(
                            text: 'Personlized Coaching',
                            icon: Icons.bookmark,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },





                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text('Start 3 Days Free Trial'),
                        ),

                      ),


                    ),






                  )






                ],
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16.0, left: 16.0, right: 16.0),
            child: Text(
              '2023 Special Early Birds Offer',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],

      ),
    );
  }
}
