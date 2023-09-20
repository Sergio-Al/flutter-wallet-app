import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/button_item.dart';
import 'package:walletapp/util/custom_card.dart';
import 'package:walletapp/util/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          color: Colors.white,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Wallet App',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // cards
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  CustomCard(
                    balance: 5250.20,
                    cardNumber: 2233444234,
                    expiryMonth: 10,
                    expiryYear: 26,
                    color: Colors.deepPurple[300],
                  ),
                  const CustomCard(
                    balance: 3342.20,
                    cardNumber: 2233444234,
                    expiryMonth: 11,
                    expiryYear: 26,
                    color: const Color.fromARGB(255, 234, 152, 29),
                  ),
                  CustomCard(
                    balance: 1111.34,
                    cardNumber: 2233444234,
                    expiryMonth: 05,
                    expiryYear: 28,
                    color: Colors.blue[300],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),

            const SizedBox(
              height: 35,
            ),

            // 3 buttons -> send + pay + bill
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send button
                  ButtonItem(
                    icon: Icons.money,
                    buttonText: 'Send',
                    colorIcon: Colors.green,
                  ),
                  ButtonItem(
                    icon: Icons.credit_card,
                    buttonText: 'Pay',
                    colorIcon: Colors.blue,
                  ),
                  ButtonItem(
                    icon: Icons.monetization_on_sharp,
                    buttonText: 'Bill',
                    colorIcon: Colors.orange,
                  ),
                  // pay button

                  // bills button
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            // column -> stats + transactions

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // statistics
                  MyListTile(
                    icon: Icons.auto_graph,
                    colorIcon: Colors.blue,
                    title: 'Statistics',
                    subtitle: "Payment and income",
                  ),
                  // transaction
                  MyListTile(
                    icon: Icons.work_history,
                    colorIcon: Colors.red,
                    title: 'Transactions',
                    subtitle: "Transaction history",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
