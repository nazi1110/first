import 'package:flutter/material.dart';

class AssetLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: PathLogo(), size: Size(200, 150));
  }
}

//Copy this CustomPainter code to the Bottom of the File
class PathLogo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9172750, size.height * 0.3601165);
    path_0.lineTo(size.width * 0.9114419, size.height * 0.3519722);
    path_0.lineTo(size.width * 0.8958561, size.height * 0.3302239);
    path_0.lineTo(size.width * 0.8531706, size.height * 0.3852307);
    path_0.lineTo(size.width * 0.6369170, size.height * 0.6638772);
    path_0.lineTo(size.width * 0.5164848, size.height * 0.5016346);
    path_0.lineTo(size.width * 0.3307084, size.height * 0.7332703);
    path_0.lineTo(size.width * 0.2234716, size.height * 0.5777909);
    path_0.lineTo(size.width * 0.2100555, size.height * 0.5936458);
    path_0.lineTo(size.width * 0.1579519, size.height * 0.6551425);
    path_0.lineTo(size.width * 0.1309190, size.height * 0.6870553);
    path_0.lineTo(size.width * 0.1550027, size.height * 0.6433195);
    path_0.lineTo(size.width * 0.2044282, size.height * 0.5535737);
    path_0.lineTo(size.width * 0.2284517, size.height * 0.5099967);
    path_0.lineTo(size.width * 0.3196394, size.height * 0.6565957);
    path_0.lineTo(size.width * 0.5323699, size.height * 0.3161988);
    path_0.lineTo(size.width * 0.6415807, size.height * 0.4728735);
    path_0.lineTo(size.width * 0.8061120, size.height * 0.2600519);
    path_0.lineTo(size.width * 0.8266142, size.height * 0.2335502);
    path_0.lineTo(size.width * 0.8044241, size.height * 0.2025956);
    path_0.lineTo(size.width * 0.8446423, size.height * 0.1916146);
    path_0.lineTo(size.width * 0.9687396, size.height * 0.1577746);
    path_0.lineTo(size.width * 0.9172749, size.height * 0.3601163);
    path_0.close();
    path_0.moveTo(size.width * 0.8293961, size.height * 0.1684891);
    path_0.lineTo(size.width * 0.7642845, size.height * 0.1862542);
    path_0.lineTo(size.width * 0.7976608, size.height * 0.2328584);
    path_0.lineTo(size.width * 0.7933332, size.height * 0.2384473);
    path_0.lineTo(size.width * 0.6423803, size.height * 0.4336922);
    path_0.lineTo(size.width * 0.5314699, size.height * 0.2745977);
    path_0.lineTo(size.width * 0.3196693, size.height * 0.6135244);
    path_0.lineTo(size.width * 0.2274108, size.height * 0.4652138);
    path_0.lineTo(size.width * 0.2018567, size.height * 0.5116024);
    path_0.lineTo(size.width * 0.1479981, size.height * 0.6093463);
    path_0.lineTo(size.width * 0.000001044267, size.height * 0.8780271);
    path_0.lineTo(size.width * 0.1657402, size.height * 0.6824377);
    path_0.lineTo(size.width * 0.2161660, size.height * 0.6228870);
    path_0.lineTo(size.width * 0.2219138, size.height * 0.6161114);
    path_0.lineTo(size.width * 0.3295556, size.height * 0.7721642);
    path_0.lineTo(size.width * 0.5158906, size.height * 0.5398303);
    path_0.lineTo(size.width * 0.6365753, size.height * 0.7023838);
    path_0.lineTo(size.width * 0.8591372, size.height * 0.4155976);
    path_0.lineTo(size.width * 0.8952537, size.height * 0.3690738);
    path_0.lineTo(size.width * 0.9221160, size.height * 0.4065967);
    path_0.lineTo(size.width * 0.9261743, size.height * 0.4122427);
    path_0.lineTo(size.width * 0.9999980, size.height * 0.1219722);
    path_0.lineTo(size.width * 0.8293960, size.height * 0.1684896);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff292C32).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2020246, size.height * 0.4802119);
    path_1.cubicTo(
        size.width * 0.2102215,
        size.height * 0.2577760,
        size.width * 0.3558617,
        size.height * 0.07999264,
        size.width * 0.5337409,
        size.height * 0.07999264);
    path_1.cubicTo(
        size.width * 0.6128992,
        size.height * 0.07999264,
        size.width * 0.6856223,
        size.height * 0.1152647,
        size.width * 0.7427378,
        size.height * 0.1739522);
    path_1.lineTo(size.width * 0.9007167, size.height * 0.1295184);
    path_1.lineTo(size.width * 0.8084567, size.height * 0.1409839);
    path_1.cubicTo(
        size.width * 0.7372661,
        size.height * 0.05381071,
        size.width * 0.6404309,
        size.height * 0.000001160473,
        size.width * 0.5337409,
        size.height * 0.000001160473);
    path_1.cubicTo(
        size.width * 0.3157207,
        size.height * 0.000001160473,
        size.width * 0.1383623,
        size.height * 0.2242859,
        size.width * 0.1383623,
        size.height * 0.5000012);
    path_1.cubicTo(
        size.width * 0.1383623,
        size.height * 0.5162728,
        size.width * 0.1390147,
        size.height * 0.5323667,
        size.width * 0.1402542,
        size.height * 0.5482088);
    path_1.lineTo(size.width * 0.07365055, size.height * 0.7259846);
    path_1.lineTo(size.width * 0.2020252, size.height * 0.4802115);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffE95229).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8948359, size.height * 0.3949932);
    path_2.lineTo(size.width * 0.8621371, size.height * 0.4370999);
    path_2.cubicTo(
        size.width * 0.8645928,
        size.height * 0.4576299,
        size.width * 0.8658792,
        size.height * 0.4786145,
        size.width * 0.8658792,
        size.height * 0.5000012);
    path_2.cubicTo(
        size.width * 0.8658792,
        size.height * 0.7315841,
        size.width * 0.7168901,
        size.height * 0.9199806,
        size.width * 0.5337389,
        size.height * 0.9199806);
    path_2.cubicTo(
        size.width * 0.3901163,
        size.height * 0.9199806,
        size.width * 0.2675579,
        size.height * 0.8040549,
        size.width * 0.2213358,
        size.height * 0.6423265);
    path_2.lineTo(size.width * 0.2208808, size.height * 0.6416453);
    path_2.lineTo(size.width * 0.1041137, size.height * 0.7778325);
    path_2.lineTo(size.width * 0.1789376, size.height * 0.7201774);
    path_2.cubicTo(
        size.width * 0.2434268,
        size.height * 0.8857473,
        size.width * 0.3782003,
        size.height * 0.9999999,
        size.width * 0.5337386,
        size.height * 0.9999999);
    path_2.cubicTo(
        size.width * 0.7517721,
        size.height * 0.9999999,
        size.width * 0.9291267,
        size.height * 0.7756812,
        size.width * 0.9291267,
        size.height * 0.5000039);
    path_2.cubicTo(
        size.width * 0.9291267,
        size.height * 0.4929258,
        size.width * 0.9784051,
        size.height * 0.2701025,
        size.width * 0.9784051,
        size.height * 0.2701025);
    path_2.cubicTo(
        size.width * 0.9792515,
        size.height * 0.2624490,
        size.width * 0.9304817,
        size.height * 0.4406373,
        size.width * 0.9304817,
        size.height * 0.4406373);
    path_2.lineTo(size.width * 0.8948355, size.height * 0.3949955);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffE95229).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
