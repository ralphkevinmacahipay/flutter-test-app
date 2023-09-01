import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/configuration/icons.dart';
import 'package:flutter_test_app/configuration/style.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SalesDesktopScreen extends StatelessWidget {
  const SalesDesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> kHeaderSale = [
      "SALE",
      "SALE",
      "SALE",
      "SALE",
    ];
    List<Map<String, dynamic>> kProdSaleList = [
      {"image": kSampleJacket},
      {"image": kSampleJacket},
      {"image": kSampleJacket},
      {"image": kSampleJacket},
      {"image": kSampleJacket},
      {"image": kSampleJacket},
      {"image": kSampleJacket},
      {"image": kSampleJacket},
    ];
    return Container(
      color: kWhite,
      height: context.height,
      width: context.width,
      child: Stack(children: [
        Container(
            height: context.percentHeight * 8.51,
            decoration: BoxDecoration(color: kWhite, boxShadow: [
              BoxShadow(
                color: kBlack.withOpacity(.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: kHeaderSale
                    .map(
                      (kItem) => Text(
                        kItem,
                        style: kInterSemiBold.copyWith(
                            fontSize: context.percentWidth * 3.47,
                            color: kLignRed),
                      ),
                    )
                    .toList())),
        Align(
          alignment: Alignment.center,
          child: Container(
            color: kWhite,
            height: context.percentHeight * 86,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 73),
              itemCount: kProdSaleList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .5 / .5,
                mainAxisSpacing: 15,
                crossAxisSpacing: context.percentWidth * 4.65,
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      kProdSaleList[index]['image'],
                    ),
                  ),
                ),
                child: Stack(children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: kLigthBrown,
                          ),
                          child: Text(
                            "15% OFF",
                            style: kInterMediumBold.copyWith(color: kWhite),
                          )).marginOnly(top: context.percentHeight * 2))
                ]),
              ),
            ),
          ).marginOnly(top: context.percentHeight * 8),
        ),
      ]),
    );
  }
}


/**
 * 
                  Text(
                    "Sale",
                    style: kInterMediumBold.copyWith(
                        fontSize: context.percentWidth * 3.47, color: kWhite),
                  ),
                  SizedBox(
                    width: context.percentWidth * 6.458,
                  ),
                  Text(
                    "Sale",
                    style: kInterMediumBold.copyWith(
                        fontSize: context.percentWidth * 3.47, color: kWhite),
                  ),
                  SizedBox(
                    width: context.percentWidth * 6.458,
                  ),
                  Text(
                    "Sale",
                    style: kInterMediumBold.copyWith(
                        fontSize: context.percentWidth * 3.47, color: kWhite),
                  ),
                  SizedBox(
                    width: context.percentWidth * 6.458,
                  ),
                  Text(
                    "Sale",
                    style: kInterMediumBold.copyWith(
                        fontSize: context.percentWidth * 3.47, color: kWhite),
                  ),
                  SizedBox(
                    width: context.percentWidth * 6.458,
                  ),

 */


  //  return Container(
  //               color: Colors.blue,
  //               child: Center(
  //                 child: Text('Item $index'),
  //               ),
  //             );