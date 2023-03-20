import 'package:flutter/material.dart';
import 'identity.dart';

class DetailPage extends StatefulWidget {
  // final String pesanTerima;
  final Identity identitasTerima;

  const DetailPage({
    Key? key,
    // required this.pesanTerima,
    required this.identitasTerima,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  height: 400,
                  width: 800,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: 200,
                          width: 130,
                          child: Image.network(widget.identitasTerima.fotoUrls,
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Name :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(widget.identitasTerima.name),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Username :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(widget.identitasTerima.username),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Email :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(widget.identitasTerima.email[0]),
                          SizedBox(
                            height: 6,
                          ),
                          Text(widget.identitasTerima.email[1]),
                          SizedBox(
                            height: 6,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Company :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(widget.identitasTerima.company[0][0]),
                          SizedBox(
                            height: 6,
                          ),
                          Text(widget.identitasTerima.company[0][1]),
                          SizedBox(
                            height: 6,
                          ),
                          Text(widget.identitasTerima.company[1][0]),
                          SizedBox(
                            height: 6,
                          ),
                          Text(widget.identitasTerima.company[1][1]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
