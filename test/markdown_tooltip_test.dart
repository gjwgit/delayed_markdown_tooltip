import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:markdown_tooltip/markdown_tooltip.dart';

void main() {
  test('test', () {
    const MarkdownTooltip(
      message: 'test',
      child: Text('Hi'),
    );
  });
}
