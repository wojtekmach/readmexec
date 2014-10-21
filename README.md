# Readmexec

Readmexec grabs commands from your README and runs them.

The idea here is to make README executable and verifiable since this is the only way to make it up to date.

## Example

```sh
gem install readmexec
```

Create a directory and grab README from github

```sh
mkdir -p readmexec
curl https://raw.githubusercontent.com/wojtekmach/readmexec/master/README.md > readmexec/README.md
```

Run readmexec. By default it will just output commands it's going to execute:

```sh
cd readmexec
readmexec
```

Run `readmexec -e` to run commands instead of just printing them.
