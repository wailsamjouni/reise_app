import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> listOfCities = ['greece', 'japan', 'rome', 'barcelona'];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.extension))
                ],
              ),
              SizedBox(height: 70),
              Text(
                'Welcome,',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              Text(
                'Wail',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  hintText: 'Search',
                ),
              ),
              SizedBox(height: 70.0),
              Text(
                'Saved Places',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 300.0,
                child: GridView.count(
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  childAspectRatio: 1.47,
                  children: <Widget>[
                    for (var item in listOfCities)
                      Image.asset(
                        'assets/images/$item.png',
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
