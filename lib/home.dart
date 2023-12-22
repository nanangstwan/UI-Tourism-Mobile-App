import 'package:flutter/material.dart';
import 'package:projek_wisata/detailpage.dart';
import 'package:projek_wisata/dummydata.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return const MyHome(
            gridCount: 2,
          );
        } else if (constraints.maxWidth <= 1200) {
          return const MyHome(gridCount: 4);
        } else {
          return const MyHome(
            gridCount: 6,
          );
        }
      }),
    );
  }
}

class MyHome extends StatefulWidget {
  final int gridCount;
  const MyHome({Key? key, required this.gridCount}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Map<String, String>> findData = [];
  @override
  void initState() {
    findData = listData;
    super.initState();
  }

  void filterData(String keyword) {
    List<Map<String, String>> result = [];
    if (keyword.isEmpty) {
      result = listData;
    } else {
      result = listData
          .where((wisata) =>
              wisata['nama']?.toLowerCase().contains(keyword.toLowerCase()) ??
              false)
          .toList();
    }
    setState(() {
      findData = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selamat Menikmati Keindahan Alam di Karanganyar',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Indonesia',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
              const SizedBox(height: 30),
                TextField(
                  onChanged: (value) => filterData(value),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    modelCard('image/taman.jpg', 'Alam'),
                    modelCard('image/cetho.jpg', 'Edukasi'),
                    modelCard('image/cetho.jpg', 'Sejarah')
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: widget.gridCount,
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: findData
                      .map(
                        (item) => InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) {
                                return DetailPage(
                                  dataModel: WisataDataModel(
                                      '${item['id']}',
                                      '${item['nama']}',
                                      '${item['image']}',
                                      '${item['alamat']}',
                                      '${item['deskripsi']}',
                                      '${item['telepon']}',
                                      '${item['tiket']}'),
                                );
                              }),
                            );
                          },
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('${item['image']}'),
                                    fit: BoxFit.cover),
                                boxShadow: const [
                                  BoxShadow(color: Colors.black, blurRadius: 5),
                                ],
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    stops: const [0.2, 0.9],
                                    colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.1),
                                    ],
                                  ),
                                ),
                                child: Align(
                                  alignment:
                                      const AlignmentDirectional(-0.7, 0.7),
                                  child: Text(
                                    '${item['nama']}',
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget modelCard(image, kata) {
    return AspectRatio(
      aspectRatio: 0.7,
      child: Container(
        margin: const EdgeInsets.only(right: 25),
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image),

            // fit: BoxFit.cover
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 5),
          ],
        ),
        child: Align(
            alignment: const AlignmentDirectional(0.0, 0.8),
            child: Text(
              kata,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
