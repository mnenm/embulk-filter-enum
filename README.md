# Enum filter plugin for Embulk

TODO: Write short description here and embulk-filter-enum.gemspec file.

## Overview

* **Plugin type**: filter

## Configuration

- **option1**: description (integer, required)
- **option2**: description (string, default: `"myvalue"`)
- **option3**: description (string, default: `null`)

## Example

```yaml
filters:
  - type: enum
    option1: example1
    option2: example2
```


## Build

```
$ rake
```
