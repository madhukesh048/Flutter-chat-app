import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chatapp/widgets/MessageItemWidget.dart';

void main(){
  const MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  const MessageItemWidget(0)
    ),
  );
  testWidgets('MessageItemWidget UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(Container),findsNWidgets(3));
    expect(find.byType(Column),findsNWidgets(1));
    expect(find.byType(Row),findsNWidgets(2));
    expect(find.byType(Text),findsNWidgets(2));
  });
}