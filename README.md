# WGSL

![A screenshot of highlighted WGSL](assets/example.png)

WGSL language support with rich syntax highlighting. Powered by the
[wgsl-analyzer language server](https://github.com/wgsl-analyzer/wgsl-analyzer).

Based on [Konrad Bochnia's WGSL Tree-sitter grammar](https://github.com/szebniok/tree-sitter-wgsl),
this extension improves upon the highlights to distinguish a wider variety of
syntax.

_Note_: I don't own or maintain the wgsl-analyzer language server, only this Zed
extension.

## Installation

To use this extension, manually install the language server, following the
instructions in [the wgsl-analyzer README](https://github.com/wgsl-analyzer/wgsl-analyzer/blob/main/README.md)
exactly.

This extension expects to find a language server binary named `wgsl_analyzer`,
_not_ `wgsl-analyzer`. This is the binary naming convention used by the language
server maintainers.

Automatic installation of the language server isn't currently possible, since
the wgsl-analyzer repository doesn't publish binary artifacts in its releases.

## Configuration

### Language

This extension adds WGSL support to Zed under the identifier "WGSL".

`.wgsl` files will be automatically identified as WGSL.

Zed's WGSL settings can be configured like so:

```json
{
    "languages": {
        "WGSL": {
            // ...
        }
    }
}
```

### wgsl-analyzer

wgsl-analyzer can be configured like any other language server, using the 
LSP ID `wgsl-analyzer`:

```json
{
    "lsp": {
        "wgsl-analyzer": {
            // ...
        }
    }
}
```

The full list of supported options [is available here](https://github.com/wgsl-analyzer/wgsl-analyzer/blob/main/editors/code/README.md).
