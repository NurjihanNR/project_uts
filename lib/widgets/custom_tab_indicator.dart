import 'package:flutter/material.dart';

class RoundedRectangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  RoundedRectangleTabIndicator({
    required Color color,
    required double weight,
    required double width,
  }) : _painter = _RRectanglePainterColor(color, weight, width);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _RRectanglePainterColor extends BoxPainter {
  final Paint _paint;
  final double weight;
  final double width;

  _RRectanglePainterColor(Color color, this.weight, this.width)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset customOffset =
        offset + Offset(0, (cfg.size?.height ?? 0) - weight); // Tambahkan null check

    // Custom Rectangle
    Rect myRect = customOffset & Size(width, weight);

    // Custom Rounded Rectangle
    RRect myRRect = RRect.fromRectXY(myRect, weight, weight);

    canvas.drawRRect(myRRect, _paint);
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Rounded Rectangle Tab Indicator Example'),
            bottom: TabBar(
              indicator: RoundedRectangleTabIndicator(
                color: Colors.blue, // Warna yang ingin Anda gunakan
                weight: 2,
                width: 30,
              ),
              tabs: [
                Tab(
                  child: Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text('Tab 1'),
                  ),
                ),
                Tab(
                  child: Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text('Tab 2'),
                  ),
                ),
                Tab(
                  child: Container(
                    margin: EdgeInsets.only(right: 39),
                    child: Text('Tab 3'),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
            ],
          ),
        ),
      ),
    );
  }
}
