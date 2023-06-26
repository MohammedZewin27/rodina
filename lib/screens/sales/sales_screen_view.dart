import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rodinasales/base.dart';
import 'package:rodinasales/compomante/Invoice.dart';
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

  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'All sales',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      floatingActionButton: SizedBox(
        // width: MediaQuery.of(context).size.width * .12,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: Platform.isWindows
                ? MediaQuery.of(context).size.width * .03
                : MediaQuery.of(context).size.width * .08,

          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (isBottomSheetShow) {
                      } else {
                        isBottomSheetShow = true;
                        scaffoldKey.currentState!
                            .showBottomSheet((context) => Container(
                                  height: 150,
                                  color: Colors.black,
                                ))
                            .closed
                            .then((value) {
                          isBottomSheetShow = false;
                        });
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .05,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'العملاء',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey[600]),
                          ),
                          const Icon(Icons.arrow_drop_down_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (isBottomSheetShow) {
                      } else {
                        isBottomSheetShow = true;
                        scaffoldKey.currentState!
                            .showBottomSheet((context) => Container(
                          height: 150,
                          color: Colors.black,
                        ))
                            .closed
                            .then((value) {
                          isBottomSheetShow = false;
                        });
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .05,
                      decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'التاريخ',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey[600]),
                          ),
                          const Icon(Icons.arrow_drop_down_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (isBottomSheetShow) {
                      } else {
                        isBottomSheetShow = true;
                        scaffoldKey.currentState!
                            .showBottomSheet((context) => Container(
                          height: 150,
                          color: Colors.black,
                        ))
                            .closed
                            .then((value) {
                          isBottomSheetShow = false;
                        });
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * .05,
                      decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'كافة المبيعات',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey[600]),
                          ),
                          const Icon(Icons.arrow_drop_down_sharp),
                        ],
                      ),
                    ),
                  ),
                ),



              ],
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '25/05/2023',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(' EGP 0.00  : مبيعات اليوم',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            const Divider(
              color: Colors.red,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Invoices();
                },
              ),
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
