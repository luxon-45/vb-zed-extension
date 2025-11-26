# Visual Basic for Zed

Visual Basic language support for the [Zed](https://zed.dev) editor.

## Features

- Full syntax highlighting for Visual Basic (.vb files)
- Keywords, types, strings, numbers, comments, operators
- Tree-sitter based parsing for accurate code analysis
- Case-insensitive keyword recognition (supports `If`, `IF`, `if`, etc.)

## Supported Syntax

- **Keywords**: `If`, `Then`, `Else`, `End If`, `For`, `Next`, `While`, `Do`, `Loop`, `Select Case`, `Function`, `Sub`, `Class`, `Module`, etc.
- **Modifiers**: `Public`, `Private`, `Protected`, `Friend`, `Shared`, `Static`, etc.
- **Types**: `String`, `Integer`, `Long`, `Boolean`, `Double`, `Date`, `Object`, etc.
- **Literals**: Strings, numbers, dates, booleans (`True`, `False`), `Nothing`
- **Operators**: Arithmetic, comparison, logical (`And`, `Or`, `Not`, `AndAlso`, `OrElse`, `Mod`, etc.)
- **Comments**: Single-line comments (`'`)

## Installation

### From Source (Dev Extension)

1. Clone this repository:
   ```bash
   git clone https://github.com/luxon-45/vb-zed-extension.git
   ```
2. Open Zed.
3. Open the Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`).
4. Type and select **`extensions: install dev extension`**.
5. Navigate to and select the cloned `vb-zed-extension` directory.

## Structure

```
vb-zed-extension/
├── extension.toml              # Extension manifest
├── languages/
│   └── vb/
│       ├── config.toml         # Language configuration
│       └── highlights.scm      # Syntax highlighting queries
└── README.md
```

## Grammar

This extension uses a modified version of [tree-sitter-vb-dotnet](https://github.com/luxon-45/tree-sitter-vb-dotnet) that exposes keywords as named nodes for proper syntax highlighting.

## License

MIT

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
