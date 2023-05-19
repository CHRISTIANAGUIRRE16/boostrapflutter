import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BootstrapContainer(
          fluid: true,
          children: [
            BootstrapRow(
              height: 600,
              children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: 300,
                        height: 300,
                        alignment: Alignment.center,
                        child: Text(
                          'Esta es una frase encima de la imagen',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ClipOval(
                        child: Image.network(
                          'https://picsum.photos/id/237/200/300',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 300),
                        child: BootstrapContainer(
                          fluid: false,
                          decoration: BoxDecoration(color: Colors.green),
                          children: [
                            BootstrapRow(
                              children: [
                                BootstrapCol(
                                  sizes: 'col-sm-4',
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                BootstrapCol(
                                  sizes: 'col-sm-4',
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                BootstrapCol(
                                  sizes: 'col-sm-4',
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
