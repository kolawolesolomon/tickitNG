import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool addDot;
  

  const AppLayoutBuilderWidget({
    super.key, 
    required this.randomDivider,
    this.width=3,
    this.addDot = false,  
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          ((constraints.constrainWidth())/randomDivider).floor(), (index) {
            List generatedList = List.generate(
              ((constraints.constrainWidth())/randomDivider).floor(), (index) => index);
                if (index == 0 || index == generatedList.length - 1){
                  if (addDot == true){
                    return Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          width: 2.5,color:
                          Colors.white,
                        ),
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                } else{
                  return SizedBox(
                    height: 2,
                    width: 5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      )
                    ),
                  );
                }
              }
           
        ),
      ),
    );
  }
}
