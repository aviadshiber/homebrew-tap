# Homebrew Tap

Custom Homebrew formulae by [aviadshiber](https://github.com/aviadshiber).

## Install

```bash
brew tap aviadshiber/tap
```

## Available Formulae

### langfuse-cli

Observability-first CLI for the [Langfuse](https://langfuse.com) LLM platform.

```bash
brew install aviadshiber/tap/langfuse-cli
```

Or:

```bash
brew tap aviadshiber/tap
brew install langfuse-cli
```

After installation, the `lf` command is available:

```bash
lf --version
lf traces list --limit 5 --from 2026-02-01
lf prompts list
```

See [langfuse-cli](https://github.com/aviadshiber/langfuse-cli) for full documentation.
