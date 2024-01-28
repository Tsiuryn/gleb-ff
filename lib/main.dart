import 'package:flutter/material.dart';
import 'package:gleb_ff/film_description.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


const _textColor = Colors.red;

class _MyHomePageState extends State<MyHomePage> {
  final _films = [
    '1. Бой с тенью',
    '2. Брат',
    '3. Лёд',
  ];


  @override
  Widget build(BuildContext context) {
    final itemStyle = TextStyle(
      fontSize: 34, color: Colors.blue, fontWeight: FontWeight.w600
      ,);

    return Scaffold(
      body: Stack(
        children: [
          Positioned(left: 0,
              right: 0,
              top: 0,
              child: Image.asset('assets/images/bg.png', fit: BoxFit.fill,)),


          Align(
            child: Container(
              height: 400,
              width: 1000,
              alignment: Alignment.center,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40),),
                  color: Colors.white70
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Любимые фильмы Глеба Артёмчика: ', style: TextStyle(
                    fontSize: 42,
                    color: Colors.black,
                    fontWeight: FontWeight.w900
                    ,),),
                  ..._films.indexed.map((e) {
                    return GestureDetector(

                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => FilmDescription(index: e.$1)));
                      },
                      child: Padding(padding: EdgeInsets.only(bottom: 12),
                        child: Text(e.$2, style: itemStyle,),),
                    );
                  })
                ],
              ),
            ),
          )

        ],
      ),
    );
  }

}
