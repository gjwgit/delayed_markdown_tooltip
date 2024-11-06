/// A tooltip supporting markdown with a popup delay to avoid clutter of tooltips.
///
// Time-stamp: <Thursday 2024-11-07 09:10:56 +1100 Graham Williams>
///
/// Copyright (c) 2023-2024, Togaware Pty Ltd.
///
/// License: https://www.gnu.org/licenses/gpl-3.0.en.html
///
// Licensed under the GNU General Public License, Version 3 (the "License");
///
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
// details.
//
// You should have received a copy of the GNU General Public License along with
// this program.  If not, see <https://www.gnu.org/licenses/>.
///
/// Authors: Graham Williams

library markdown_tooltip;

import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:markdown_tooltip/markdown_tooltip.dart';

/// A [Tooltip] supporting
/// [markdown](https://daringfireball.net/projects/markdown/) with a default
/// delay before being displayed.
///
/// ```dart
/// ElevatedButton(
///    onPressed: ...,
///    child: const MarkdownTooltip(
///        message: '''
///
///        **Save** Tap here to save our future. Visit [the
///          internet](https://example.net) for details.
///
///        ''',
///        child: Icon(Icons.save),
///    ),
///```
///
/// The default [Tooltip.waitDuration] fi=or the [Tooltip] widget is 0ms and so
/// the tooltip is displayed immediately. In my view this can clutter the
/// app. The default for [MarkdownTooltip] is 1s.

class MarkdownTooltip extends StatelessWidget {
  /// The [MarkdownTooltip] builds a constant [Widget].

  const MarkdownTooltip({
    required this.child,
    required this.message,
    super.key,
    this.wait = const Duration(seconds: 1),
  });

  /// A widget to be wrapped with this tooltip.

  final Widget child;

  /// A message to be displayed, utilising markdown.

  final String message;

  /// How long to delay before displaying this tooltip.

  final Duration wait;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      richMessage: WidgetSpan(
        alignment: PlaceholderAlignment.baseline,
        baseline: TextBaseline.alphabetic,
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 350),
          child: MarkdownBody(
            // Use the text tidying aspects of [wordWrap] so we can present this
            // message using triple quotes and formated with space before and
            // after, which looks a lot nicer in the code. Set the width high to
            // avoid embedded '\n'.
            data: wordWrap(
              message.isEmpty ? 'Tooltip Coming Soon.' : message,
              width: 1000,
            ),
            onTapLink: (text, href, title) {
              final Uri url = Uri.parse(href ?? '');
              launchUrl(url);
            },

            // style: const TextStyle(
            //   fontSize: 18,
            // ),
          ),
        ),
      ),
      //message: message,
      // TODO 20240707 gjw THIS exitDuration WORKS ON DESKTOP BUT DOES NOT SEEM
      // TO HAVE A AFFECT ON ANDROID.
      showDuration: const Duration(seconds: 5),
      waitDuration: wait,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0XFFDFE0FF), //Colors.amber,
        // gradient:
        //     const LinearGradient(colors: <Color>[Colors.amber, Colors.red]),
      ),
      // textStyle: const TextStyle(
      //   fontSize: 18,
      // ),
      child: child,
    );
  }
}
