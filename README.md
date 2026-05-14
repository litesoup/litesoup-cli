# litesoup-cli

> wp-cli-style command-line interface for [litesoup](https://github.com/litesoup/litesoup).

```bash
litesoup site create --domain=example.com --tls=letsencrypt --email=ops@example.com
litesoup harden ssh
litesoup audit wp-vulnerabilities
litesoup help
```

## Requirements

- litesoup core installed (`litesoup stack install`)
- Scripts available at `/usr/lib/litesoup/`

## Install

```bash
git clone https://github.com/litesoup/litesoup-cli.git
cd litesoup-cli
sudo bash install.sh
```

Or automatically via `litesoup stack install` (stage 16).

## Usage

```
litesoup <group> <subcommand> [--flags...]

Groups:
  stack     Install and manage the litesoup stack
  site      Create and manage WordPress sites
  harden    Apply per-service security hardening
  audit     Read-only health and security checks
```

Run `litesoup help <group>` for subcommands.

## License

[MIT](https://github.com/litesoup/litesoup/blob/main/LICENSE)
