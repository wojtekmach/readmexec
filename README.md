# Readmexec

Readmexec grabs commands from your README and runs them.

The idea here is to make README executable and verifiable since this is the only way to make it up to date.

## Example

```sh
mkdir -p readmexec && cp README.md readmexec/
```

and run readmexec. By default it will just output commands it's going to execute:

```sh
cd readmexec && readmexec
```

Run `readmexec -e` to run them.
