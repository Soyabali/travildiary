import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom navigation bar code
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon:Icon(Icons.home,color: Colors.black)),
            new Tab(icon:Icon(Icons.search,color: Colors.grey)),
            new Tab(icon:Icon(Icons.graphic_eq,color: Colors.grey)),
            new Tab(icon:Icon(Icons.add_circle_outline,color: Colors.grey)),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          /// Ist child
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('travelogram',style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  color: Colors.grey.shade900
                ),),
                SizedBox(width: 90.0),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications),
                    color: Colors.grey.shade500,
                  iconSize: 30.0,
                 ),
                SizedBox(
                  width: 5.0,
                ),
                InkWell(
                child:
                Container(
                height: 50.0,
                width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage('assets/chris.jpg')
                    )
                  ),

                )

                )


              ],
            ),
          ),
          /// II nd child
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade100),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.navigation,color: Colors.blue),
                      iconSize: 50.0,
                  ),
                  SizedBox(width: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('MALDIVES TRIP 2018',
                        style:TextStyle(color: Colors.grey.shade500,
                        fontSize: 14.0),
                        ),
                        SizedBox(height: 4.0),
                        Text('Add an update',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),

                      ],
                      
                    ),
                  ),
                  SizedBox(width: 50.0),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios,
                      color: Colors.grey),
                  iconSize: 30.0,
                  ),

                ],
              ),

            ),
          ),
          /// III rd child
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 25.0,right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('FROM THE COMMUNITY',style:
                  TextStyle(color: Colors.grey,
                  fontSize: 15.0,
                    fontFamily: 'Montserrat')),
                Text('View All', style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontFamily: 'Montserrat')),

              ],
            ),
          ),
          /// iv th Child
           _buildImageGrid(),
           _imgGalleryDetail(),
           _buildImageGrid(),
          _imgGalleryDetail(),
          _buildImageGrid(),
          _imgGalleryDetail()
        ],
      ),
     );
  }
  /// Create a widget  to show on a Screen
 Widget _buildImageGrid(){
    return Padding(
      padding: const EdgeInsets.only(top: 25.0,left: 15.0,right: 15.0),
      child: Container(
      height: 225,
        child: Row(
          children: <Widget>[
            Container(
              height: 225.0,
              width: MediaQuery.of(context).size.width/2 + 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0)),
                image: DecorationImage(
                  image: AssetImage('assets/beach2.jpg'),
                  fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
               Container(
                 height: 111.5,
                 width: MediaQuery.of(context).size.width / 2 - 72.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(15.0),
                   ),
                   image: DecorationImage(
                     image: AssetImage('assets/beach2.jpg'),
                     fit: BoxFit.cover
                   )
                 ),
               ),
               SizedBox(height: 2.0),
              Container(
                     height: 111.5,
                     width: MediaQuery.of(context).size.width / 2 - 72.0,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                             bottomRight: Radius.circular(15.0)),
                         image: DecorationImage(
                             image: AssetImage('assets/beach3.jpg'),
                             fit: BoxFit.cover)),
                   ),
               ],
           ),
            )
          ],
        ),
      ),
    );
 }
  Widget _imgGalleryDetail() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Maui Summer 2018',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Text(
                    'Teresa Soto added 52 Photos',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  ),
                  SizedBox(width: 4.0),
                  Icon(
                    Icons.timer,
                    size: 4.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    '2h ago',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  )
                ],
              )
            ],
          ),
          SizedBox(width: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/navarrow.png'),
                ),
              ),
              SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/chatbubble.png'),
                ),
              ),
              SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 22.0,
                  width: 22.0,
                  child: Image.asset('assets/fav.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


