# `last` for OpenWRT

A wrapper that emulates the behavior of the `last` command on OpenWRT environment.

## Installation

To run this script, copy it to bin directory and make it executable:

```sh
curl -o /usr/bin/last \
https://raw.githubusercontent.com/alpheusday/last-openwrt/refs/heads/main/scripts/last \
&& chmod +x /usr/bin/last
```

## Notice

- Not all options are supported.
- Final output may be different from the original `last` command.

## License

This project is licensed under the terms of the MIT license.
