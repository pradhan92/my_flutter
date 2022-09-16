import 'package:demogext/controller/myfunction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mf = Get.find<MyFunction>();
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Getx Demo"),
            ),
            body: Obx((() {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        mf.decrement();
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 40,
                      ),
                    ),
                    Text(
                      "${mf.qty}",
                      style: TextStyle(fontSize: 40),
                    ),
                    IconButton(
                        onPressed: (() {
                          mf.increment();
                        }),
                        icon: Icon(
                          Icons.add,
                          size: 40,
                        )),
                  ],
                ),
              );
            }))));
  }
}
