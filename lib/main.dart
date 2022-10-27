import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int itemgroupvalue = 0;
  bool itemcheckvalue = false;

  bool js = false;
  bool csharp = false;
  bool pathi0n = false;

  String get txt {
    String str = "yo are select : \n";
    if (js == true) str += 'js \n';
    if (csharp == true) str += 'csharp \n';
    if (pathi0n == true)
      str += 'pathi0n \n';
    else {
      str += 'none';
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('main page'),
      ),
      body: Container(
        child: Column(
          children: [
            radio_value(0, 'first', 'description_one'),
            radio_value(1, 'second', 'description_two'),
            radio_value(3, 'third', 'description_three'),
            const SizedBox(height: 50),
            Column(
              children: [
                CheckboxListTile(
                    title: const Text('csharp'),
                    value: csharp,
                    onChanged: (e) {
                      setState(
                        () {
                          csharp = e!;
                        },
                      );
                    }),
                CheckboxListTile(
                    title: const Text('js'),
                    value: pathi0n,
                    onChanged: (r) {
                      setState(
                        () {
                          pathi0n = r!;
                        },
                      );
                    }),
                CheckboxListTile(
                    title: const Text('paython'),
                    value: js,
                    onChanged: (value) {
                      setState(
                        () {
                          js = value!;
                        },
                      );
                    }),
                ElevatedButton(
                  onPressed: () {
                    var ad = AlertDialog(
                      title: const Text('thank you for apply'),
                      content: Text(txt),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          return ad;
                        });
                  },
                  child: const Text('apply'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  RadioListTile radio_value(val, txt, subtext) {
    return RadioListTile(
      controlAffinity: ListTileControlAffinity.trailing,
      value: val,
      groupValue: itemgroupvalue,
      onChanged: (selectvalue) {
        setState(() {
          itemgroupvalue = selectvalue;
        });
      },
      title: Text(txt),
      subtitle: Text(subtext),
    );
  }
}
