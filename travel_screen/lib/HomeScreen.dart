import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var imageBg =
      "https://plus.unsplash.com/premium_photo-1700577888245-9729a4fe6040?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  var image1 =
      "https://images.unsplash.com/photo-1610641818989-c2051b5e2cfd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  var image2 =
      "https://images.unsplash.com/photo-1699469811440-9afec1e07b54?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  var image3 =
      "https://plus.unsplash.com/premium_photo-1700140826710-86b40edd3895?q=80&w=1820&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  var image4 =
      "https://images.unsplash.com/photo-1576190348129-d158fb6c67fd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 4.2,
            width: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(imageBg),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cox\'s Bazar",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.purpleAccent.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    "Sea beach",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  )),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_pin),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Bangladesh",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "An online space to explore words, ideas and new writing commissioned and"
              " produced by National Centre for Writing. Whether you are looking for"
              " long or short reads on the craft of writing; interviews with emerging writers",
              style: TextStyle(fontSize: 12, color: Colors.black),
              textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Best shots of the week",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(image1),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: NetworkImage(image2),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 75,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(image3),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                      ),
                                    )),
                                Flexible(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 75,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(image4),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),

          Padding(
            padding:  EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flight starts from", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text("\$130", style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                ),

                FilledButton(onPressed: (){}, child: Text("Book Now", style: TextStyle(color: Colors.white),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
