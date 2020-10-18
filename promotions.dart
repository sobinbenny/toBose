import 'package:flutter/material.dart';

final primary = Colors.blue[600];
final secondary = Color(0xfff29a94);
final List<Map> schoolLists = [
  {
    "code": "FIRST50",
    "info": "Get 50% off on delivery charges on your first order",
    "imageUrl":
        "https://cdn.pixabay.com/photo/2015/04/04/19/08/fifty-706883_960_720.jpg"
  },
  {
    "code": "SBI30BLK",
    "info": "Get 30% off on delivery charges on your first order using SBI debit card",
    "imageUrl":
        "https://www.logo-designer.co/wp-content/uploads/2017/04/2017-Design-Stack-new-logo-design-State-Bank-of-India.png"
  },
  {
    "code": "BULKOOS30",
    "info": "30% off on delivery charge for all the orders above Rs.4999",
    "imageUrl":
        "https://previews.123rf.com/images/distrologo/distrologo1902/distrologo190200633/117597662-delivery-box-logo-design-courier-logo-design-template-icon-vector.jpg"
  },
  
  {
    "code": "PAYTM20CB",
    "info": "Pay through PayTM and get flat 20% instant cashback",
    "imageUrl":
        "https://securecdn.pymnts.com/wp-content/uploads/2020/01/Screen-Shot-2020-01-31-at-4.05.21-PM.png"
  },
  {
    "code": "AXIS40",
    "info": "Get 40% off on delivery charges on your first order using Axis bank credit card",
    "imageUrl":
        "https://media.glassdoor.com/sqll/226240/axis-bank-squarelogo.png"
  },
  {
    "code": "PHONEPE30",
    "info": "Pay through PhonePe and get flat 30% instant cashback",  
    "imageUrl":
        "https://www.searchpng.com/wp-content/uploads/2018/11/phone-pe.png"
  },
  {
    "code": "CRED40",
    "info": "Pay through CRED and get flat 40% instant cashback on delivery charges",
    "type": "Play Group School",
    "imageUrl":
        "https://save2spend.in/wp-content/uploads/2019/10/cred.png"
  },
  {
    "code": "ICICI10",
    "info": "Get 10% off on delivery charges on your first order using ICICI debit card",
   
    "imageUrl":
        "https://cdn.theorg.com/e8eaa0f6-9ad1-451c-9d3c-3ca01bb0db1d_thumb.jpg"
  },
];

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Promotions",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          // controller: TextEditingController(text: infos[0]),
                          cursorColor: Theme.of(context).primaryColor,

                          decoration: InputDecoration(
                              hintText: "Search...",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildList(BuildContext context, int index) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
    ),
    width: double.infinity,
    height: 110,
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65,
              height: 65,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2, color: secondary),
                image: DecorationImage(
                    image: NetworkImage(schoolLists[index]['imageUrl']),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                schoolLists[index]['code'],
                style: TextStyle(
                    color: primary, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.info,
                    color: secondary,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(schoolLists[index]['info'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.content_copy),
              color: Colors.blueGrey.withOpacity(0.75),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Coupon copied.."),
                  ),
                );
              },
            ),
            Text(
              '*T&C Apply',
              style: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: 10,
                  letterSpacing: .3,
                  fontStyle: FontStyle.italic),
            ),
          ],
        )
      ],
    ),
  );
}
