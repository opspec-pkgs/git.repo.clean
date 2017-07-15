# Problem statement
removes ignored files & dirs from a git repo

# Example usage

> note: in examples, VERSION represents a version of the git.clean pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/git.clean#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/git.clean#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/git.clean#VERSION }
  inputs: 
    srcDir:
    opts:
  outputs:
    srcDir:
```


# Support

join us on [![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or [open an issue](https://github.com/opspec-pkgs/git.clean/issues)
