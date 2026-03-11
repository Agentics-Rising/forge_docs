# verify Command

Verify that deployed resources match the contract definition.

## Syntax

```bash
fluid verify <contract-file> [options]
```

## Options

| Option | Description | Default |
|--------|-------------|---------|
| `--expose <id>`, `--expose-id <id>` | Verify a specific expose by ID | Verify all |
| `--strict` | Exit with error code if mismatches found | `false` |
| `--out <file>` | Output verification report to JSON file | Console only |
| `--show-diffs` | Show field-by-field differences | `false` |
| `--env <name>` | Apply an environment overlay before verifying | — |

## What It Checks

The verify command compares your deployed resources against the contract definition:

- **Schema matches** — column names, types, and ordering
- **Resource existence** — all declared resources exist
- **Configuration drift** — settings match contract expectations
- **Data quality** — optional checks on deployed data

## Examples

### Basic Verification

```bash
fluid verify contract.fluid.yaml
```

**Output:**
```
✅ All resources match contract definition

Verified:
  ✅ bitcoin_prices_table — schema matches (5 columns)
  ✅ market_data_view — view definition matches
```

### Strict Mode (CI/CD)

```bash
fluid verify contract.fluid.yaml --strict
# Exit code 0 = all match, 1 = mismatches found
```

Useful in CI/CD pipelines to gate deployments.

### Verify a Specific Expose

```bash
fluid verify contract.fluid.yaml --expose bitcoin_prices_table
```

### Show Detailed Differences

```bash
fluid verify contract.fluid.yaml --show-diffs
```

**Output:**
```
⚠️  Mismatches found in 1 resource

bitcoin_prices_table:
  Column 'market_cap_usd':
    Contract: FLOAT64
    Deployed: NUMERIC
```

### Save Report

```bash
fluid verify contract.fluid.yaml --out verification-report.json
```

## See Also

- [apply command](./apply.md) — deploy resources from a contract
- [validate command](./validate.md) — check contract syntax before deployment
