// A minimal example to illustrate MarkdownTooltip
//
// Run it with:
//
// cd example
// flutter create .
// flutter run

import 'package:flutter/material.dart';

import 'package:markdown_tooltip/markdown_tooltip.dart';

/// Flutter code sample for [MarkdownTooltip].

void main() => runApp(const MarkdownTooltipExampleApp());

/// Demonstrator class

class MarkdownTooltipExampleApp extends StatelessWidget {
  /// Initialise.

  const MarkdownTooltipExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('MarkdownTooltip Sample')),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: MarkdownTooltipSample(),
        ),
      ),
    );
  }
}

/// Define the MarkdownTooltip to use.

class MarkdownTooltipSample extends StatelessWidget {
  /// Initialise.

  const MarkdownTooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MarkdownTooltip(
      message: '''

      # Markdown Tooltip
      
      I am a **markdown** tooltip. Notice the **bold** and *italic* text.

      Tooltips should normally be short and are just reminders. But we can
      slightly extend the tooltips to guide the user in their navigation and
      use of the app.

      + Bullets are okay.

      + But they need to be separated by empty lines.

      > This line begins with a greater than (>)

      Here's some code:
      
      ```
      flutter run --release
      ```

      An ***ordered list*** example.

      1. First example

      2. Second example

      ---

      Experiment and enjoy. Give your users a slightly better experience.

      ---

      ''',
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Hover here to show a tooltip.'),
      ),
    );
  }
}
