import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class eXpan extends StatefulWidget {
  const eXpan({super.key});

  @override
  State<eXpan> createState() => _eXpanState();
}

class _eXpanState extends State<eXpan> {
  final List _vest = [
    [
      'item title',
      '\$24.00',
      'assets/images/f2.png',
      'black',
      Colors.black,
      '22'
    ],
    [
      'item title 2',
      '\$24.00',
      'assets/images/f3.png',
      'black',
      Colors.amber,
      '22'
    ],
    [
      'item title 3',
      '\$24.00',
      'assets/images/f4.png',
      'black',
      Colors.blue,
      '22'
    ],
    [
      'item title 4',
      '\$24.00',
      'assets/images/f5.png',
      'black',
      Colors.white,
      '22'
    ],
    [
      'item title 5',
      '\$24.00',
      'assets/images/f6.png',
      'black',
      Colors.red,
      '22'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // edit text
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: AutoSizeText(
              "Edit",
              style: TextStyle(color: Colors.blueAccent, fontSize: 18),
            ),
          )
        ],
        // icon
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            icon: Icon(Icons.close)),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            // 1 expanded for title & item count (4 item)
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "Shopping Cart",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "4 item",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            // 2 expanded for Lista

            Expanded(
                flex: 5,
                child: Container(
                  child: ListView.builder(
                      itemCount: _vest.length,
                      itemBuilder: (context, index) {
                        return Slidable(
                          endActionPane:
                              ActionPane(motion: StretchMotion(), children: [
                            SlidableAction(
                              onPressed: ((context) {
                                // delete
                              }),
                              backgroundColor: Colors.red,
                              icon: Icons.delete,
                            )
                          ]),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 0.8, color: Colors.black26),
                                  )),
                              height: 130,
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(left: 12),
                              child: Container(
                                child: Row(
                                  children: [
                                    // 1 svg image expanded
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Image.asset(_vest[index][2]),
                                      ),
                                    ),
                                    // 2 title and subtitle expanded
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 20),
                                        height: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              // title from list(_test)
                                              _vest[index][0],
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black),
                                            ),
                                            AutoSizeText(
                                                // subtitle from list(_test)
                                                _vest[index][1],
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black45)),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .fiber_manual_record_rounded,
                                                      color: _vest[index][4],
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    AutoSizeText(
                                                        // subtitle from list(_test)
                                                        _vest[index][3],
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .black45)),
                                                  ],
                                                ),
                                                // divider
                                                Container(
                                                  height: 20,
                                                  child: VerticalDivider(
                                                    thickness: 2,
                                                    color: Colors.black,
                                                    width: 12,
                                                  ),
                                                ),
                                                Row(children: [
                                                  AutoSizeText(
                                                      // subtitle from list(_test)
                                                      "Size :",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Colors.black45)),
                                                  AutoSizeText(
                                                      // subtitle from list(_test)
                                                      _vest[index][5],
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black)),
                                                ]),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // 3 icon expanded
                                  ],
                                ),
                              )),
                        );
                      }),
                )),
            // 3 expanded for price details

            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row 1
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Shopping fee",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                            AutoSizeText(
                              '\$6.99',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      // Row 2
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                "Sub Total",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black54),
                              ),
                              AutoSizeText(
                                '\$6.99',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Row 3
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Totla",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            AutoSizeText(
                              '\$6.99',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            // 4 for Ceckout inkwell

            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      child: AutoSizeText(
                        "CHEKOUT",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
