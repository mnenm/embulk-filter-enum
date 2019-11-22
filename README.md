# Enum filter plugin for Embulk

convert value to enum value

## Overview

* **Plugin type**: filter

## Configuration

- **enums**: (array)

## Example

```yaml
filters:
  - type: enum
    enums:
      - column1: {"values":{"val1":1, "val2":2, "val3":3}, "else": 0}
      - column2: {"values":{1:"val1", 2:"val2", 3:"val3"}}
```
