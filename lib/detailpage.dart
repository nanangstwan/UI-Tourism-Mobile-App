import 'package:flutter/material.dart';
import 'package:projek_wisata/dummydata.dart';

class DetailPage extends StatefulWidget {
  final WisataDataModel dataModel;
  const DetailPage({Key? key, required this.dataModel}) : super(key: key);

  @override
  State<DetailPage> createState() => DdetailPageState();
}

class DdetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(widget.dataModel.image ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          // height: 500,
          child: Image.asset(widget.dataModel.image ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 50),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.transparent),
          ),
        ),
        scroll(),
      ],
    ));
  }

  scroll() {
    final mediaQuery = MediaQuery.of(context);
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 0.9,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.dataModel.nama ?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    widget.dataModel.alamat ?? '',
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '08.00 - 16.00 WIB',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  widget.dataModel.telepon ?? '',
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.turned_in_not,
                                  color: Colors.green,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  widget.dataModel.tiket ?? '',
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Deskripsi',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              widget.dataModel.deskripsi ?? '',
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: mediaQuery.size.width/2.6,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.green.shade600),
                                // color: Colors.green.shade600,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.map_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Maps',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                width: mediaQuery.size.width / 2.5,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade600,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'WhatsApp',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ))
              ],
            ),
          );
        });
  }
}
