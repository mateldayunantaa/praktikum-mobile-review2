import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final titles = ['Bike', 'Boat', 'Bus', 'Car'];
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus,
      Icons.directions_car
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List view"),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
              child: ListTile(
            leading: Icon(icons[nomor]),
            title: Text(titles[nomor]),
            onTap: () {
              // Menampilkan Snackbar ketika item ditekan
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Anda memilih: ${titles[nomor]}')),
              );
            },
          ));
        },
      )

      // ListView(
      //   children: const [
      //     ListTile(
      //       //leading: Icon(Icons.sunny),
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("sun.jpg"),
      //       ),
      //       title: Text("Sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),

      //     ListTile(
      //       leading: Icon(Icons.sunny),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),

      //     ListTile(
      //       leading: Icon(Icons.sunny),
      //       title: Text("Star"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),

      //   ],
      //  )

      // GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //   ),
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       decoration: const BoxDecoration(
      //         color: Colors.red,
      //         image: DecorationImage(image: AssetImage("gambar1.png")),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       decoration: const BoxDecoration(
      //         color: Colors.red,
      //         image: DecorationImage(image: AssetImage("gambar2.jpeg")),
      //       ),
      //     ), // This trailing comma makes auto-formatting nicer for build methods.
      //   ],
      //),
      ,
    );
  }
}
