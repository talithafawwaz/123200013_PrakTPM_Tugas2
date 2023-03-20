import 'package:flutter/material.dart';
import 'package:tugas2/detail_page.dart';
import 'identity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pesanKirim = "Data yang dikirimkan";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Identity dataIdentitas = listIdentity[index];
            return Card(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(
                        identitasTerima: dataIdentitas,
                      );
                    }));
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        child: SizedBox(
                          height: 100,
                          width: 130,
                          child: Image.network(dataIdentitas.fotoUrls,
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 200.0),
                          ),
                          Text(dataIdentitas.name)
                        ],
                      ),
                    ],
                  )),
            );
          },
          // perulangan
          itemCount: listIdentity.length,
        ),
      ),
    );
  }
}
