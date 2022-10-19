# GoTSRPC Verify Action

This action verifies if the repository has up to date generated code

## Inputs

### `Target`

**Required** Target to generate the code. Default `"gotsrpc.yaml"`.

## Outputs

### `diff`

The diff that the generated code made

## Example usage

```yaml
uses: foomo/gotsrpc-verify-action@main
with:
  target: './gotsrpc.yaml'
```