import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppScreen1(),
    );
  }
}

class AppScreen1 extends StatefulWidget {
  const AppScreen1({super.key});

  @override
  State<AppScreen1> createState() => _AppScreen1State();
}

class _AppScreen1State extends State<AppScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 8, 88, 153),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Text("Evento"),
                Spacer(),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.person),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), fixedSize: Size(20, 20)),)
              ],
            ),
            SizedBox(
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Procurar Evento'),
                )),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                children: [
                  Row(
                    children: [
                      Center(
                          child: Container(
                        height: 300,
                        width: 200,
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Center(
                                child: ListTile(
                              title: Text("Exemplo"),
                              subtitle: Text('01/02/2022'),
                            )),
                            SizedBox(
                              width: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Nº de candidatos : 500'),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.person))
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          int a = 1;
                                          int b = 2;
                                          if (a + b == 3) {
                                            print('Presente');
                                          } else {
                                            print('faltou');
                                          }
                                        },
                                        child: Text('Marcar Presença')))
                              ],
                            )
                          ],
                        ),
                      )),
                      Item(),
                      Item(),
                      Item(),
                      Item(),
                      Item(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.add))),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.home))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 300,
      width: 200,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
              child: ListTile(
            title: Text("Exemplo"),
            subtitle: Text('01/02/2022'),
          )),
          SizedBox(
            width: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nº de candidatos : 500'),
              IconButton(onPressed: () {}, icon: Icon(Icons.person))
            ],
          ),
          SizedBox(
            width: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        int a = 1;
                        int b = 2;
                        if (a + b == 3) {
                          print('Presente');
                        } else {
                          print('faltou');
                        }
                      },
                      child: Text('Marcar Presença')))
            ],
          )
        ],
      ),
    ));
  }
}
// class item extends StatelessWidget {
//   const item({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       height: 300,
//       width: 200,
//       decoration: BoxDecoration(
//           color: Colors.blue, borderRadius: BorderRadius.circular(10)),
//       child: Column(
//         children: [
//           Center(
//               child: ListTile(
//             title: Text(Event),
//             subtitle: Text('Sabádos, 2022, 2023,2024'),
//           )),
//           SizedBox(
//             width: 2,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Nº de candidatos : 1000'),
//               IconButton(onPressed: () {}, icon: Icon(Icons.person))
//             ],
//           ),
//           SizedBox(
//             width: 2,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                   child: ElevatedButton(
//                       onPressed: () {}, child: Text('Marcar Presença')))
//             ],
//           )
//         ],
//       ),
//     ));
//   }
// }
