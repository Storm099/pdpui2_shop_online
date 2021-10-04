import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu),
        title: const Text("Apple Products",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          Center(
            child: Container(
              height: 36,
              width: 30,
              color: Colors.orange,
              child: const Center(child: Text("7",style: TextStyle(color: Colors.white),)),
            ),
          ),
          const SizedBox(width: 12,),
        ],
      ),
      backgroundColor: Colors.deepOrange,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/apple10.jpg"),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.3),

                          ]
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("LifeStyle Sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                      const SizedBox(height: 20,),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                        ),
                        child: const Center(
                          child: Text("Shop Now",style: TextStyle(color: Colors.grey,fontSize: 19),),
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                )
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                  children: [
                    _itemCard(img: "assets/images/apple8.jpg"),
                    _itemCard(img: "assets/images/apple1.jpg"),
                    _itemCard(img: "assets/images/apple6.jpg"),
                    _itemCard(img: "assets/images/apple7.jpg"),
                    _itemCard(img: "assets/images/apple10.jpg"),
                    _itemCard(img: "assets/images/apple9.jpg"),
                    _itemCard(img: "assets/images/apple8.jpg"),
                    _itemCard(img: "assets/images/apple9.jpg"),
                    _itemCard(img: "assets/images/apple1.jpg"),
                    _itemCard(img: "assets/images/apple6.jpg"),
                    _itemCard(img: "assets/images/apple7.jpg"),
                    _itemCard(img: "assets/images/apple10.jpg"),
                    _itemCard(img: "assets/images/apple9.jpg"),
                    _itemCard(img: "assets/images/apple8.jpg"),
                  ],
                ),
              ),
            )

          ],
        )

      ),
    );
  }

  Widget _itemCard({img}){

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Icon(Icons.favorite,color: Colors.red,size: 42,)
        ],
      ),
    );

  }

}
