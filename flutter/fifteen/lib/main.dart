import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(10, (i) => "Hello_" + i.toString()),
    )
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;
  
  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "Mixed List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return myListItem(item);
          },
        ),
      ),
    );
  }

  Container myListItem(String item) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: 
            BorderSide(width: 2, color: Color.fromRGBO(255, 200, 53, 1)),
        ),
        color: Color.fromRGBO(249, 243, 223, 1)),
      child: ListTile(
        title: Text(item),
        subtitle: Text(":::" + item),
      ),
    );
  }
}
