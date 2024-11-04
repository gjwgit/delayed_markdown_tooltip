import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:delayed_markdown_tooltip/delayed_markdown_tooltip.dart';

void main() {
  test('test', () {
    const DelayedMarkdownTooltip(
      message: 'test',
      child: Text('Hi'),
    );
  });
}
