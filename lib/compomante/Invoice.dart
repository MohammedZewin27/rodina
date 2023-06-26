import 'package:flutter/material.dart';

class Invoices extends StatelessWidget {
  const Invoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text('client name'),
          Divider(
            color: Colors.red,
            thickness: 2,
            endIndent: MediaQuery.of(context).size.width * .3,
            indent: MediaQuery.of(context).size.width * .3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('  04:00 PM', style: Theme.of(context).textTheme.bodySmall),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit_note_outlined,
                    color: Colors.black,
                  )),
            ],
          ),
          const Divider(
            color: Colors.blue,
            endIndent: 10,
            thickness: 2,
            indent: 10,
          ),

          /// اصناف المشتريات
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) => Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '    ${index + 1} -',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('تيشيرت بناتي ',
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                          child: Center(
                            child: Text('1 X 50',
                                style: Theme.of(context).textTheme.bodySmall),
                          )),
                      Expanded(
                          child: Text('50.00 EGP',
                              style: Theme.of(context).textTheme.bodySmall)),
                    ],
                  ),
                ],
              ),
            ),

          ),
          const Divider(
            color: Colors.grey,
            endIndent: 10,
            indent: 10,
          ),
          Container(
            width: double.infinity,
            child: Center(
                child: Text(
              '  EGP اجمالي الفاتورة :  3000',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
          ),
          const Divider(
            color: Colors.grey,
            endIndent: 10,
            indent: 10,
          ),
        ],
      ),
    );
  }
}
