Kong - Header Checker Plugin
==============================

A [Kong](https://github.com/Kong/kong) plugin that checks the User-Agent header and rejects requests which does not have a User-Agent value which includes one of the configured allowed ones.

As of now, this plugin is a proof of concept and not ready for production. Use it at your own discretion :).

[Requirements](#requirements) |
[Installation](#installation) |
[Configuration](#configuration) |
[Author](#author) |
[Contributing](#contributing) |
[Acknowledgements](#acknowledgements) |
[License](#license)

## Requirements

* [Kong](https://konghq.com/) (>=1.0): if you want to install this plugin on Kong >=0.12.x, please use the [0.1.0 version](https://github.com/albertocr/kong-plugin-header-checker/releases/tag/0.1.0).

## Installation

Please see the [official documentation](https://docs.konghq.com/0.14.x/plugin-development/distribution/) on how to install a plugin manually.  (Luarocks not yet supported).

## Configuration

Here's a list of all the parameters which can be used in this plugin's configuration:

| Form Parameter                 | Default       | Description                                                  |
| -------------                  | ------------- | -------------------                                          |
| `name`                         |               | The name of the plugin to use, in this case `header-checker` |
| `consumer_id`                  |               | The id of the Consumer which this plugin will target.        |
| `config.header_to_check`       | `User-Agent`  | The header which the plugin checks                           |
| `config.allowed_header_values` | `secretAgent` | The allowed header values in header_to_check header          |

## Author

* **Alberto C**

## Contributing

All contributions are welcome! Please fork the repo, work on a named branch (with a descriptive name if possible) and create a pull request explaining the change or improvement you attempt to make.

## Acknowledgements

Thanks to [@millenc](https://github.com/millenc) and [@aitormendivil](https://github.com/aitormendivil) for their comments, insights and ideas!

## License

This project is under the [MIT license](https://github.com/albertocr/kong-plugin-header-checker/blob/master/LICENSE).
