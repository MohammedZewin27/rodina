import 'package:flutter/material.dart';
import 'package:rodinasales/base.dart';
import 'package:rodinasales/screens/sales/sales_screen_modelView.dart';

import '../../style/colors.dart';

class SalesScreenView extends StatefulWidget {
  const SalesScreenView({super.key});

  static const String routeName = 'Sales';

  @override
  State<SalesScreenView> createState() => _SalesScreenViewState();
}

class _SalesScreenViewState
    extends BaseView<SalesScreenView, SalesScreenViewModel>
    implements SalesNavigator {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.navigator = this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مبيـعـات'),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width*.12,
        child: FloatingActionButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add,size: MediaQuery.of(context).size.width*.03,color: Shadowcont,),
              Text(
                'فاتورة',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('0.00 EGP'),
                Text(' : مبيعات اليوم'),
              ],
            ),
            Divider(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

  @override
  SalesScreenViewModel initViewModel() {
    return SalesScreenViewModel();
  }
}
