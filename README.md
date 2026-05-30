# nvloupe

The jeweler's loupe for your vim or neovim plugins.

nvloupe reads what a vim plugin _can do_ that might hurt you — run a shell,
open a socket, read your `~/.ssh`, run code it fetched at runtime — and tells
you in plain terms, once when you first trust it and again whenever an update
changes the answer. It doesn't decide whether a plugin is malicious; that call
is yours. nvloupe just makes sure you're looking through the right lens.

It reports what a plugin _can do_ and what _changed_, not a verdict or a score.

## Status

Under development. Not usable.

## License

GPL-3
