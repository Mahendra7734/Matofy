import 'package:flutter/material.dart';
import '../../Api_provider.dart';
import '../../COLORS/COLORS.dart';
import '../../Storage/storage.dart';
import 'ActivationWallet_list.dart';
import 'Autopool_list.dart';
import 'Daily_task_income.dart';
import 'Income_list.dart';
import 'Referal_list.dart';
import 'ServicePassiveIncome.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  var h;
  var w;
  var total_active_wallet ;
  var total_income_wallet ;
  var total_auto_pool_wallet ;
  var total_referral_wallet ;
  var total_daily_task_income_wallet ;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    working_wallet_user();
  }
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      color: LIGHT_COLOR,
      child: total_active_wallet==null? Center(child: CircularProgressIndicator()):Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActivationWallet()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Images/wallet (1).png',color: LIGHT_COLOR,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Text("Activation Wallet",
                            style: TextStyle(
                                color: BLACK_COLOR, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: w * 0.03,
                              child: Image.asset('assets/Images/rupee.png')),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              total_active_wallet.toString(),
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Income_list()));

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Images/income.png'),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right:w*0.35 ),
                        child: Text("Income",
                            style: TextStyle(
                                color: BLACK_COLOR, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: w * 0.03,
                              child: Image.asset('assets/Images/rupee.png')),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              total_income_wallet.toString() ,
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Auto_pool_list()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Images/profit.png'),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right:w*0.33),
                        child: Text("Auto pool",
                            style: TextStyle(
                                color: BLACK_COLOR, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: w * 0.03,
                              child: Image.asset('assets/Images/rupee.png')),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              total_auto_pool_wallet.toString(),
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Referal_list()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Images/recommendation-letter.png'),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right:w*0.35),
                        child: Text("Referral",
                            style: TextStyle(
                                color: BLACK_COLOR, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: w * 0.03,
                              child: Image.asset('assets/Images/rupee.png')),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              total_referral_wallet.toString(),
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Daily_task_income()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Images/task.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Text("Daily task income",
                            style: TextStyle(
                                color: BLACK_COLOR, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: w * 0.03,
                              child: Image.asset('assets/Images/rupee.png')),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              total_daily_task_income_wallet.toString(),
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Service_passive_income()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Icons/passive-income.png'),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right:w*0.13),
                        child: Text("Service Passive Income",
                            style: TextStyle(
                                color: BLACK_COLOR, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: w * 0.03,
                              child: Image.asset('assets/Images/rupee.png')),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                             // total_referral_wallet.toString(),
                              "40",
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  working_wallet_user() async {
    var data1={
      'user_id':id(),

    };
    try {
      var res = await ApiProvider().postRequest(apiUrl: 'working-wallet-user',data: data1);
      if (res['status'].toString() == '1') {
        setState(() {
          total_active_wallet=res['total_active_wallet'];
           total_income_wallet =res['total_income_wallet'];
           total_auto_pool_wallet=res['total_auto_pool_wallet'] ;
           total_referral_wallet =res['total_referral_wallet'];
           total_daily_task_income_wallet=res['total_daily_task_income_wallet'] ;

        });
        print(total_active_wallet);
      } else {

      }
    } catch (e) {
      print(e.toString());
    }

  }
}
