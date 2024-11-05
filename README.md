[![Pub Package](https://img.shields.io/pub/v/rdflib)](https://pub.dev/packages/markdown_tooltips)
[![GitHub Issues](https://img.shields.io/github/issues/anusii/rdflib)](https://github.com/gjwgit/markdown_tooltips/issues)
[![GitHub License](https://img.shields.io/github/license/anusii/rdflib)](https://raw.githubusercontent.com/gjwgit/markdown_tooltips/main/LICENSE)

A tooltip widget supporting Markdown and with a delayed popup by default.

## Features

Tooltips are essential for self documenting apps which guide the user
through the app, without having to refer to  user manuals (if they
exist). The default Flutter Tooltip is quite plain, though
effective. This package adds support for Markdown within the tooltip.
It also introduces a delay by default to avoid clutter in instantly
popping up tooltips.

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
you would like a more flexible tooltip. In the below example of an
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

Text selection and URL links are not yet supported. Contributions are
welcome.

## Sample screenshots

The [Rattle](https://github.com/gjwgit/rattleng) app, with its
front-end written in Flutter, utilises `MarkdownTooltip`s.  In this
simple example notice the use of bold to highlight the file types that
are permitted to be loaded into Rattle. Markdown will make bold any
text between `**` and `**`.

![](assets/images/rattle_datset_filename_tooltip.png)
 
