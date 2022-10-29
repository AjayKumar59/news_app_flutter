import 'package:flutter/material.dart';

import 'package:indian_news18/api_service.dart';
import 'package:indian_news18/config.dart';
import 'package:indian_news18/model.dart';
import 'package:indian_news18/view_news.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<News>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async {
    posts = await RemoteService().getNews();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss | EEEE d MMM ').format(now);
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    image: AssetImage('images/news7.png'),
                    width: 80,
                    height: 80,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Text(
                          "India News18",
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          "${formattedDate}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.search,
                            size: 24.0,
                          ),

                          IconButton(
                            iconSize: 34,
                            icon: const Icon(
                              Icons.settings,
                              size: 34,
                            ),
                            onPressed: () {
                              currentTheme.switchTheme();
                            },
                          ),
                          // InkWell(
                          //   child: Icon(
                          //     Icons.settings,
                          //
                          //     size: 24,
                          //   ),
                          // )
                        ]),
                  )
                ]),
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("images/news7.png"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("All",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/india.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("India",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/world.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("World",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/tech.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("Technology",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/ent.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("Entertainment",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/buss.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("Business",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrange[100],
                            image: const DecorationImage(
                              image: AssetImage("images/sports.jpg"),
                              fit: BoxFit.cover,
                            )),
                        alignment: Alignment.center,
                        child: const Text("Sports",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/Science.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("Science",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                          image: const DecorationImage(
                            image: AssetImage("images/Health.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 4.0,
                            ), //BoxShadow
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text("Health",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Latest News',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Top stories at the moment',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("images/tech.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: 350,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigate to the second screen using a named route.
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.orange),
                                    ),
                                    child: const Text(
                                      "Latest News18",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "Google Pixel 7 is now official. 7 will besold in Snow, Obsidian and Lemongrass colour options via Flipkart. Google has announced a limited time launch offer includin.",
                                    style: TextStyle(
                                        fontSize: 18,
                                        backgroundColor: Colors.black26),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, bottom: 2, left: 5),
                                  child: Text(
                                    "Oct 10, 2022 12:29 | www.indianews18",
                                    style: TextStyle(
                                        backgroundColor: Colors.black26,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("images/buss.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 350,
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    )),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orange),
                                  ),
                                  child: const Text(
                                    "Latest News",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  "Google Pixel 7 is now official. 7 will besold in Snow, Obsidian and Lemongrass colour options via Flipkart. Google has announced a limited time launch offer includin.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      backgroundColor: Colors.black26),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(top: 5, bottom: 2, left: 5),
                                child: Text(
                                  "Oct 10, 2022 12:29 | www.indianews18",
                                  style: TextStyle(
                                      backgroundColor: Colors.black26,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("images/ent.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 350,
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    )),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orange),
                                  ),
                                  child: const Text(
                                    "Latest News",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  "Google Pixel 7 is now official. 7 will besold in Snow, Obsidian and Lemongrass colour options via Flipkart. Google has announced a limited time launch offer includin.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      backgroundColor: Colors.black26),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(top: 5, bottom: 2, left: 5),
                                child: Text(
                                  "Oct 10, 2022 12:29 | www.indianews18",
                                  style: TextStyle(
                                      backgroundColor: Colors.black26,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Visibility(
                  visible: isLoaded,
                  // ignore: sort_child_properties_last
                  child: ListView.builder(
                    itemCount: posts?.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ViewNews(post: posts![index]),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                posts![index].img ?? '',
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                        child: const Text(''),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8),
                                              child: Text(
                                                posts![index].title ?? '',
                                                maxLines: 3,
                                                style: TextStyle(fontSize: 18),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Container(
                                            alignment: Alignment.bottomLeft,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            child: Text(
                                              posts![index].source ?? '',
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5,
                                          child: Text(
                                            "Oct 10, 2022 12:29 |  ${posts![index].source ?? ''}",
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        )
                                      ]),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  replacement: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Shimmer.fromColors(
                            baseColor: Color.fromARGB(255, 241, 236, 236),
                            highlightColor: Color.fromARGB(255, 184, 184, 182),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(''),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              alignment: Alignment.topLeft,
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 8),
                                                child: Text(
                                                  '',
                                                  maxLines: 3,
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              alignment: Alignment.bottomLeft,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              child: const Text(
                                                '',
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            alignment: Alignment.bottomLeft,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            child: const Text(
                                              "",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ]),
                                      )
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(''),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              alignment: Alignment.topLeft,
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 8),
                                                child: Text(
                                                  '',
                                                  maxLines: 3,
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              alignment: Alignment.bottomLeft,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              child: const Text(
                                                '',
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            alignment: Alignment.bottomLeft,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            child: const Text(
                                              "",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ]),
                                      )
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(''),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              alignment: Alignment.topLeft,
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 8),
                                                child: Text(
                                                  '',
                                                  maxLines: 3,
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              alignment: Alignment.bottomLeft,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              child: const Text(
                                                '',
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            alignment: Alignment.bottomLeft,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            child: const Text(
                                              "",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ]),
                                      )
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(''),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              alignment: Alignment.topLeft,
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 8),
                                                child: Text(
                                                  '',
                                                  maxLines: 3,
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              alignment: Alignment.bottomLeft,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              child: const Text(
                                                '',
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            alignment: Alignment.bottomLeft,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            child: const Text(
                                              "",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ]),
                                      )
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                          child: const Text(''),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              alignment: Alignment.topLeft,
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 8),
                                                child: Text(
                                                  '',
                                                  maxLines: 3,
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              color: Colors.grey,
                                              alignment: Alignment.bottomLeft,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              child: const Text(
                                                '',
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            alignment: Alignment.bottomLeft,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.5,
                                            child: const Text(
                                              "",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ]),
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
