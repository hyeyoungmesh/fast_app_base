import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';
import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem(this.stock, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          width10,
          Image.asset(
            stock.stockImagePath,
            width: 50,
          ),
          width20,
          (stock.stockName).text.size(18).bold.make(),
          emptyExpanded,
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
