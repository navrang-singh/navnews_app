import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navnews_app/controller/news_controller.dart';

Widget customDrawer(BuildContext context,WidgetRef ref){

    Map catmap = {"Business":"business" , "Entertainment" : "entertainment" ,"General":"general","Health":"health","Science":"science","Sports":"sports", "Technology":"technology"};
    Map catmapRev = {"business":"Business" , "entertainment" : "Entertainment" ,"general":"General","health":"Health","science":"Science","sports":"Sports", "technology":"Technology"};
    List<String> category = ["Business","Entertainment","General","Health","Science","Sports","Technology"];

    List<String> country = ["India","USA","Japan","China","Germany"];
    Map conmap = {"India":"in","USA":"us","Japan":"jp","China":"ch","Germany":"ge"};
    Map conmapRev = {"in":"India","us":"USA","jp":"Japan","ch":"China","ge":"Germany"};




    String currcountry = ref.watch(newsProvider).currCountry;
    String currcategory = ref.watch(newsProvider).currCategory;
    currcategory = catmapRev[currcategory];
    currcountry = conmapRev[currcountry];
  

    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children:  [
             DrawerHeader(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color:Colors.black,width: 3),borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("nav",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 40),),
                      Text("News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),)
                    ],
                  ),
                ),
              )
            ),
           const SizedBox(
            height: 100,
           ),
              const Text(" Select Country", style: TextStyle(fontWeight: FontWeight.bold,fontSize:32),),
             Container(
              padding: const EdgeInsets.fromLTRB(50, 5, 0, 5),
               child: DropdownButton<String>(
                  value: currcountry,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  
                  onChanged: (String? value){
                    currcountry = value!;
                    ref.read(newsProvider.notifier).loadNewsCountry(conmap[currcountry]);
                    Navigator.pop(context);
                  },
                  items: country.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),),
                    );
                  }).toList(),
                ),
             ),
              const SizedBox(
                height: 10,
              ),
              const Text(" Select Category", style: TextStyle(fontWeight: FontWeight.bold,fontSize:32),),
              Container(
                padding: const EdgeInsets.fromLTRB(50, 5, 0, 5),
                child: DropdownButton<String>(
                  value: currcategory,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? value) {
                    currcategory = value!;
                    ref.read(newsProvider.notifier).loadNewsCategory(catmap[currcategory]);
                     Navigator.pop(context);
                  },
                  items: category.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             
          ],
        ),
      ),
    );
  }