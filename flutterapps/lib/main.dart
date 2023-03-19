import 'package:flutter/material.dart';
import 'package:flutterapps/widgets/button.dart';
import 'package:flutterapps/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey Selena',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Welcome back!',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$5 194 482',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                            text: 'Transfer',
                            bgColor: Colors.amber,
                            textColor: Colors.black),
                        Button(
                            text: 'Request',
                            bgColor: Colors.white,
                            textColor: Colors.black)
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Wallets',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: ' 6 428',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: const CurrencyCard(
                        name: 'Bitcoin',
                        code: 'BTC',
                        amount: ' 9 875',
                        icon: Icons.currency_bitcoin_rounded,
                        isInverted: true,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const CurrencyCard(
                        name: 'Dollar',
                        code: 'USD',
                        amount: ' 428',
                        icon: Icons.attach_money_rounded,
                        isInverted: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
          )),
    );
  }
}
