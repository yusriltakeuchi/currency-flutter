import 'package:currency/core/viewmodels/dompet_provider.dart';
import 'package:currency/core/viewmodels/rekening_provider.dart';
import 'package:currency/ui/screens/detail_screen.dart';
import 'package:currency/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency"),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      //Call rekening provider
      child: Consumer<RekeningProvider>(

        builder: (context, rekeningProv, _) {
          //Call dompet provider
          return Consumer<DompetProvider>(
            builder: (context, dompetProv, _) {

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Rekening",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54
                            ),
                          ),

                          Text(
                            "Rp ${rekeningProv.saldo.toString()}",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black87
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: <Widget>[
                          Text(
                            "Dompet",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54
                            ),
                          ),
                          Text(
                            "Rp ${dompetProv.money.toString()}",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black87
                            ),
                          ),
                        ],
                      )
                      
                    ],
                  ),
                  
                  SizedBox(height: 10),
                  
                  CustomButton(
                    title: "Rekening (+1000)",
                    icon: Icons.credit_card,
                    color: Colors.green,
                    onClick: () => rekeningProv.increment(1000),
                  ),
                  CustomButton(
                    title: "Dompet (+1000)",
                    icon: Icons.account_balance_wallet,
                    color: Colors.green,
                    onClick: () => dompetProv.increment(1000),
                  ),

                  Divider(),

                  CustomButton(
                    title: "Rekening (-500)",
                    icon: Icons.credit_card,
                    color: Colors.red,
                    onClick: () => rekeningProv.decrement(500),
                  ),
                  CustomButton(
                    title: "Dompet (-500)",
                    icon: Icons.account_balance_wallet,
                    color: Colors.red,
                    onClick: () => dompetProv.decrement(500),
                  ),

                  Divider(),

                  CustomButton(
                    title: "Go to Detail Screen",
                    icon: Icons.navigate_next,
                    color: Colors.blue,
                    onClick: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailScreen()
                    )),
                  ),
                ],
              );
            },
          );
        },
      )
    );
  }
}