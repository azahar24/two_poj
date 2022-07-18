import 'package:flutter/material.dart';
import 'package:two_poj/ui/widgets/big_text.dart';
import 'package:two_poj/ui/widgets/view_all_buttom.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.arrow_back_outlined,color: Colors.white,),
                    decoration: BoxDecoration(
                        color: Colors.green,
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  SizedBox(width: 40,),
                  BigText(text: 'Transaction History')
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 12,right: 12),
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text('Naira Account: N190000',style: TextStyle(
                    fontSize: 18
                  ),),

                  Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.green,)
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,

                )
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.blue,width: 2)
                      )
                    ),
                    child: Center(child: Text('ALL TRANSSACTIONS',maxLines: 1,)),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    child: Center(child: Text('DEBITS',style: TextStyle(color: Colors.grey),)),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    child: Center(child: Text('CREADIT',style: TextStyle(color: Colors.grey),)),
                  ),

                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Card(
              child: ListTile(
                title: Text('Access Bank',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                subtitle: Text('28, Jan 2020',style: TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                leading: Icon(Icons.add_call,size: 30,),
                trailing: Text('\$2,400',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Access Bank',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                subtitle: Text('28, Jan 2020',style: TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                leading: Icon(Icons.add_call,size: 30,),
                trailing: Text('\$2,400',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Access Bank',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                subtitle: Text('28, Jan 2020',style: TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                leading: Icon(Icons.add_call,size: 30,),
                trailing: Text('\$2,400',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Access Bank',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                subtitle: Text('28, Jan 2020',style: TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                leading: Icon(Icons.add_call,size: 30,),
                trailing: Text('\$2,400',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Access Bank',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                subtitle: Text('28, Jan 2020',style: TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                leading: Icon(Icons.add_call,size: 30,),
                trailing: Text('\$2,400',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Access Bank',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                subtitle: Text('28, Jan 2020',style: TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                leading: Icon(Icons.add_call,size: 30,),
                trailing: Text('\$2,400',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
            ),




            ],)
          ],
        ),
      ),
    );
  }
}
