# Homebrew Tap

Custom Homebrew formulae by [aviadshiber](https://github.com/aviadshiber).

## Install

```bash
brew tap aviadshiber/tap
brew install aviadshiber/tap/<formula>
```

## Available Formulae

| Formula | Command | Description |
|---------|---------|-------------|
| [`groovy-check`](https://github.com/aviadshiber/groovy-check) | `groovy-check` | Lint Groovy/Jenkinsfile code locally and validate declarative pipeline syntax against a live Jenkins server |
| [`java-functional-lsp`](https://github.com/aviadshiber/java-functional-lsp) | `java-functional-lsp` | Java LSP server enforcing functional programming best practices |
| [`lightctl`](https://github.com/aviadshiber/lightctl) | `lightctl` | LightRun CLI, a runtime debugging tool |
| [`mp`](https://github.com/aviadshiber/mp) | `mp` | Mixpanel CLI, query analytics from your terminal |

```bash
brew install aviadshiber/tap/groovy-check
brew install aviadshiber/tap/java-functional-lsp
brew install aviadshiber/tap/lightctl
brew install aviadshiber/tap/mp
```

## Deprecated

### langfuse-cli

> [!WARNING]
> **Deprecated and archived.** The `lf` CLI stops working on **2026-11-16**, when Langfuse retires the observations endpoint it uses. The formula is kept for now, and Homebrew warns when you install it.
>
> Use the official Langfuse CLI and agent skill instead:
>
> ```bash
> npm i -g @langfuse/cli          # then: langfuse api <resource> <action>
> npx skills add langfuse/skills --skill "langfuse"
> ```
>
> Docs: <https://langfuse.com/docs/api-and-data-platform/features/cli>

The archived source is at [aviadshiber/langfuse-cli](https://github.com/aviadshiber/langfuse-cli).
