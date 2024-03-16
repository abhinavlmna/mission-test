import 'package:easy_edu/Screens/chatpage.dart';
import 'package:flutter/material.dart';

class Pages {
  late String name;
  Pages({required this.name});
}

class Subjects {
  late String img2;
  late String name2;
  Subjects({required this.img2, required this.name2});
}

class Topics {
  late String img;
  late String name;
  Topics({required this.img, required this.name});
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splashscreen> {
  List<Page> pages = [];
  List<Subjects> sublist = [
    Subjects(img2: 'assets/images/chem.jpeg', name2: 'chemistry'),
    Subjects(img2: 'assets/images/drama.png', name2: 'Drama'),
    Subjects(img2: 'assets/images/english.jpeg', name2: 'English'),
    Subjects(img2: 'assets/images/math.jpg', name2: 'math'),
    Subjects(img2: 'assets/images/chem.jpeg', name2: 'chemistry'),
    Subjects(img2: 'assets/images/drama.png', name2: 'Drama'),
    Subjects(img2: 'assets/images/english.jpeg', name2: 'English'),
    Subjects(img2: 'assets/images/math.jpg', name2: 'math'),
    Subjects(img2: 'assets/images/output.png', name2: 'physics'),
    // Subjects(img2: 'assets/images/physics2.jpeg', name2: 'physics'),
    // Subjects(img2: 'assets/images/physics2.jpeg', name2: 'physics'),
    // Subjects(img2: 'assets/images/physics2.jpeg', name2: 'physics'),
    // Subjects(img2: 'assets/images/physics2.jpeg', name2: 'physics'),
    // Subjects(img2: 'assets/images/physics2.jpeg', name2: 'physics'),
  ];
  List<Topics> Topiclist = [
    Topics(img: 'assets/images/flutterimg.png', name: 'Flutter'),
    Topics(img: 'assets/images/pythonlogo.png', name: 'Python'),
    Topics(img: 'assets/images/html.png', name: 'HTML'),
    Topics(img: 'assets/images/java.png', name: 'Java'),
    // Topics(img: 'assets/images/nodejs(copy).png', name: 'nodejs'),
    Topics(img: 'assets/images/pythonlogo.png', name: 'Python'),
    Topics(img: 'assets/images/html.png', name: 'HTML'),
    Topics(img: 'assets/images/java.png', name: 'Java')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          'Easy_Edu',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 125, 240, 105),
        shadowColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 200),
              child: Text(
                'Learn a new skill today',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Topiclist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Topics T = Topiclist[index];
                    return Container(
                      height: 200,
                      child: Column(
                        children: [
                          Image.asset(
                            T.img,
                            height: 180,
                            width: 100,
                          ),
                          Text(T.name),
                        ],
                      ),
                    );
                  },
                ),
                //   child: GridView.builder(
                //     itemCount: Topiclist.length,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2, mainAxisSpacing: 2),
                //     itemBuilder: (BuildContext context, int index) {
                //       Topics T = Topiclist[index];
                //       return Container(
                //         height: 300,
                //         width: 150,
                //         child: Column(
                //           children: [
                //             Image.asset(
                //               T.img,
                //               height: 200,
                //               width: 150,
                //             ),
                //             Text(T.name)
                //           ],
                //         ),
                //       );
                //     },
                //   ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 200),
              child: Text(
                'Learn a new Subject today',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sublist.length,
                itemBuilder: (BuildContext context, int index) {
                  Subjects S = sublist[index];
                  return Container(
                    height: 200,
                    child: Column(
                      children: [
                        Image.asset(
                          S.img2,
                          height: 180,
                          width: 100,
                        ),
                        Text(S.name2),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 200),
              child: Text(
                'Make your Puzzles here',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 150,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      height: 150,
                      width: 100,
                      color: Colors.black,
                    )),
                    Positioned(
                        top: 40,
                        left: 35,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    Positioned(
                        top: 80,
                        left: 25,
                        child: Text(
                          'Add New',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
      ]),
    );
  }
}
