import 'package:flutter/material.dart';
import 'package:orderit/presentation/custom_icons/icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: const Text(
          "Order It",
          style: TextStyle(color: Color(0xff333333), fontSize: 20.0),
        ),
        leading: IconButton(
          icon: const Icon(
            OrderIt.menu,
            color: Color(0xff333333),
            size: 18.0,
          ),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                OrderIt.cart_menu,
                color: Colors.black,
                size: 24.0,
              ))
        ],
        backgroundColor: const Color(0xfffafafa),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      drawer: const Drawer(),
      body: const WalletPage(),
    );
  }
}

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: Text(
              "Wallet",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF251F2D),
                fontSize: 24.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 4.0),
            child: Text(
              "Tuesday, 2 Feb 2021",
              style: TextStyle(
                color: Color(0xFF393C47),
                fontSize: 13.0,
              ),
            ),
          ),
          Row(
            children: const [
              Text(
                "Balance: ",
                style: TextStyle(
                  color: Color(0xFF251F2D),
                  fontSize: 15.0,
                ),
              ),
              Text(
                "N 75,750",
                style: TextStyle(
                    color: Color(0xFF251F2D),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Icon(OrderIt.money_send),
                  ),
                  label: const Padding(
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text("Fund Wallet"),
                  ),
                  style: TextButton.styleFrom(
                    primary: const Color(0xFFFFFFFF),
                    backgroundColor: const Color(0xFF000000),
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.only( top: 5.0, bottom: 5.0),
                    child: Icon(OrderIt.money_send),
                  ),
                  label: const Text("Transfer Funds"),
                  style: TextButton.styleFrom(
                    primary: const Color(0xFFFFFFFF),
                    backgroundColor: const Color(0xFF000000),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 130.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFDDF6F8),
                  ),
                  width: 243.0,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Amount Spent"),
                        Text(
                          "N 120,350",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 243.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFFFDD8C),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Amount Sent"),
                        Text(
                          "N 5,720",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 243.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFE5E2FF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Amount Received"),
                        Text(
                          "N 1,500",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
