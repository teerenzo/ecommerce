import 'package:flutter/material.dart';
import 'package:mecommerce/constants/global_variable.dart';
import 'package:mecommerce/features/account/widgets/below_app_bar.dart';
import 'package:mecommerce/features/account/widgets/orders.dart';
import 'package:mecommerce/features/account/widgets/top_buttons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    body: Column(
        children: const [
          BelowAppBar(),
           SizedBox(height: 10),
           TopButtons(),
           SizedBox(height: 20),
          Orders(),
        ],
      ),
    
    );
  }
}
