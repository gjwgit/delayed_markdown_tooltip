import 'package:flutter/material.dart';

import 'package:markdown_tooltip/markdown_tooltip.dart';

/// Flutter code sample for [MarkdownTooltip].

void main() => runApp(const MarkdownTooltipExampleApp());

class MarkdownTooltipExampleApp extends StatelessWidget {
  const MarkdownTooltipExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(tooltipTheme: const TooltipThemeData(preferBelow: false)),
      home: Scaffold(
        appBar: AppBar(title: const Text('MarkdownTooltip Sample')),
        body: const Center(
          child: MarkdownTooltipSample(),
        ),
      ),
    );
  }
}

class MarkdownTooltipSample extends StatelessWidget {
  const MarkdownTooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MarkdownTooltip(
      message: '''

      I am a **markdown** tooltip showing the *markdown* markup that we can use
      to enhance our tooltips.

      While recognising that tooltips should normally be quite short and
      reminders of functionality, we can slightly extend the tooltips to guide
      the app user in their navigation and use of the app.

      So we can add various markdown additions that make sense.

      + Bullets are okay.

      + But they need to be separated by empty lines in the string because we
      use a word wrap.

      Experiment and enjoy. Give your users a slightly better experience.
      
      ''',
      child: Text('Hover over the text to show a tooltip.'),
    );
  }
}
