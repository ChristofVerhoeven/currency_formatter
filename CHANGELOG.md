## 0.8.3 (2025-03-07)
- added credo as dev/test dependency
- added .formatter.exs and fixed formatting
- fixed warning for elixir 1.18

## 0.8.2 (2024-07-03)
- dependency updates for phoenix_html 4 and elixir 1.15

## 0.8.1 (2018-08-24)
- bumped deps

## 0.8.0 (2018-08-24)
- fixed formatting for negative cents, for example -5 and -53 would be displayed as €-,5 and €-,53. this has been remedied :)

## 0.7.0 (2018-02-22)
- you can now pass along the option `keep_decimals: true` with the formatters to ... wait for it... keep the decimals :)

example :
    assert "€1" == CurrencyFormatter.format(100, :eur)
    assert "€1,00" == CurrencyFormatter.format(100, :eur, keep_decimals: true)

- Added new methods to help with html formatting and warp the symbol and amount in spans with the class `currency-formatter-symbol` and `currency-formatter-amount`

    - `html_format/2`
    - `html_format/3`
    - `raw_html_format/2`
    - `raw_html_format/3`

## 0.6.0 (2018-02-14)
- Updated readme to cover the new disambiguate option
- Bumped deps

Thanks @duff for :
- For fixing a bug causing extraneous separator showing up at the front of negative values.
- Default behaviour is now to _not_ use disambiguate symbols, which can be turned on again by using an option like `CurrencyFormatter.format(123456, "AUD", disambiguate: true)`

## 0.5.0 (2017-10-06)

- Reformatted and cleaned upcode
- added dialyzer and more strict specs
- updated deps

## 0.4.8 (2017-05-29)
Thanks to @jknipp for adding blacklist support.
You can configure this in the settings just like you configure the whitelist

```elixir
config :currency_formatter, :blacklist, ["XDR", "XAG", "XAU"]
```

## 0.4.7 (2017-05-25)
Thanks to @jknipp for syncing up with the latest version of the currency_iso.json

## 0.4.6 (2017-04-04)

  - bumped deps

## 0.4.5 (2017-01-09)
Thanks to @marceldegraaf for removing deprecation warnings for elixir 1.4

## 0.4.4 (2016-12-07)
Added a configuration option so you can whitelist supported currencies. To make use of this you can update you app's config.exs with

```elixir
config :currency_formatter, :whitelist, ["EUR", "GBP", "USD"]
```

Thank you @vraravam for the suggestion :)

## 0.4.3 (2016-10-31)

  - Updated data source, returning usd by default. Thank you @optikfluffel !
  - bumped deps

## 0.4.2 (2016-08-11)

  - bumped deps

## 0.4.1 (2016-08-01)

  - Added a new function CurrencyFormatter.symbol/1 which will return the disambiguous currency symbol

## 0.4.0 (2016-06-25)

  - Added a new function (CurrencyFormatter.get_currencies_for_select) which returns a list with all currencies to be used in a select dropdown.

## 0.3.0 (2016-06-25)

  - Added a new function (CurrencyFormatter.get_currencies) which returns a map with all currencies and their formatting rules. Thank you @minibikini !
  - bumped all dependencies

## 0.2.0 (2016-06-18)
Added a new function (CurrencyFormatter.instructions(:EUR)) which returns formatting settings for a currency. You can use this information to create for example an input field to use with the Autonumeric js library.

## 0.0.1 (2016-03-23)

  - Initial commit
