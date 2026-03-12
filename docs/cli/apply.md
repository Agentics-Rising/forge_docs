# apply Command

Execute a FLUID contract: load data, run transformations, create infrastructure.

## Syntax

```bash
fluid apply <contract-file> [options]
```

The `<contract-file>` can be a `.fluid.yaml` contract or a previously saved plan JSON file.

## Options

### Execution Control

| Option | Description | Default |
|--------|-------------|---------|
| `--yes` | Skip confirmation prompt | `false` |
| `--dry-run` | Show what would happen without executing | `false` |
| `--timeout <minutes>` | Global timeout | `120` |
| `--parallel-phases` | Enable parallel phase execution | `false` |
| `--max-workers <n>` | Maximum parallel workers | `4` |

### Safety & Rollback

| Option | Description | Default |
|--------|-------------|---------|
| `--rollback-strategy` | `none`, `immediate`, `phase_complete`, `full_rollback` | `phase_complete` |
| `--require-approval` | Require approval for destructive operations | `false` |
| `--backup-state` | Create a state backup before execution | `false` |
| `--validate-dependencies` | Validate all dependencies before execution | `false` |

### Reporting & Monitoring

| Option | Description | Default |
|--------|-------------|---------|
| `--report <path>` | Report output path | `runtime/apply_report.html` |
| `--report-format` | `html`, `json`, `markdown` | `html` |
| `--metrics-export` | `none`, `prometheus`, `datadog`, `cloudwatch` | `none` |
| `--notify <dest>` | Notification destinations | — |

### Development & Debugging

| Option | Description | Default |
|--------|-------------|---------|
| `--verbose` | Verbose output | `false` |
| `--debug` | Debug-level logging | `false` |
| `--keep-temp-files` | Keep temporary files after execution | `false` |
| `--profile` | Enable performance profiling | `false` |

### Advanced

| Option | Description | Default |
|--------|-------------|---------|
| `--workspace-dir <path>` | Working directory | `.` |
| `--state-file <path>` | Custom state file location | — |
| `--config-override <json>` | JSON configuration override string | — |
| `--provider-config <path>` | Path to provider configuration file | — |

## What It Does

The apply command orchestrates a multi-phase execution:

1. **Validate** — checks contract syntax and provider configuration
2. **Plan** — generates the execution plan
3. **Execute** — runs each phase (create resources, load data, run transforms)
4. **Report** — generates an execution report

## Examples

### Local Execution

```bash
# Quick local run
fluid apply contract.fluid.yaml --yes
```

### Cloud Deployment

```bash
# Deploy to GCP
fluid apply contract.fluid.yaml --provider gcp --env prod
```

### Preview Without Executing

```bash
fluid apply contract.fluid.yaml --dry-run
```

Shows the full execution plan without making any changes.

### Production-Safe Deployment

```bash
fluid apply contract.fluid.yaml \
  --require-approval \
  --backup-state \
  --rollback-strategy full_rollback \
  --report-format json \
  --notify slack://data-team
```

### CI/CD Pipeline

```bash
fluid validate contract.fluid.yaml --strict && \
fluid apply contract.fluid.yaml --yes --report-format json
```

### Parallel Execution

```bash
fluid apply contract.fluid.yaml \
  --parallel-phases \
  --max-workers 8 \
  --timeout 60
```

## Rollback Strategies

| Strategy | Behavior |
|----------|----------|
| `none` | No rollback on failure |
| `immediate` | Roll back the failing phase immediately |
| `phase_complete` | Let the current phase finish, then roll back |
| `full_rollback` | Roll back all completed phases |

## See Also

- [plan command](./plan.md) — preview changes before applying
- [verify command](./verify.md) — verify deployment matches contract
- [Getting Started Guide](/getting-started/) — end-to-end walkthrough
