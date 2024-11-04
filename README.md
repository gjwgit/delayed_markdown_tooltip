A tooltip widget supporting Markdown and with a delayed popup by default.

## Features

Tooltips are essential for self documenting apps which guide the user
through the app, without having to refer to any (and often
non-existent) user manuals. The default Flutter Tooltip is quite
plain, though effective. This package adds support for Markdown within
the tooltip.  It also introduces a delay bey default to avoid clutter
in instantly popping up tooltips.

## Getting started

Simply add the package to your app by running the command:

```bash
dart pub add markdown_tooltip
```

Your `pubspec.yaml` will be updated to look like:

```yaml
dependencies:
  ...
  markdown_tooltips: ^0.0.2
```

## Usage

The `MarkdownTooltip` widget is used to wrap another widget for which
you would like a more attractive tooltip. In this example of an
`ElevatedButton` the `Icon` child is wrapped with a `MarkdownTooltip`.

```dart
...
ElevatedButton(
    onPressed: ...,
    child: const MarkdownTooltip(
        message: '''

        **Save** Tap here to save our future. Visit [the
          internet](https://example.net) for details.

        ''',
        child: Icon(Icons.save),
    ),
)
```

## Additional information

The tooltip has a delay by default to avoid cluttering our apps.

You can contribute to this package and rreport issues through the
[github](https://github.com/gjwgit/markdown_tooltip) repository. 

We attempt to respond to issues within 5 days.
