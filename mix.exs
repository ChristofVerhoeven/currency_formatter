defmodule CurrencyFormatter.Mixfile do
  use Mix.Project

  def project do
    [
      app: :currency_formatter,
      version: "0.8.3",
      description:
        "A library to help with formatting a number to a currency using iso standards and other convenience functions related to formatting currencies",
      package: package(),
      elixir: "~> 1.16",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        plt_add_deps: true,
        ignore_warnings: "dialyzer.ignore-warnings",
        flags: [
          :error_handling,
          :race_conditions,
          :unknown,
          :unmatched_returns
        ]
      ],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      test_coverage: [
        tool: ExCoveralls
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, ">= 0.0.0", only: :dev, runtime: false},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:excoveralls, ">= 0.0.0", only: :test},
      {:phoenix_html, "~> 4.0"},
      {:phoenix_html_helpers, "~> 1.0"},
      {:jason, "~> 1.4"},
    ]
  end

  defp package do
    [
      maintainers: ["Gerard de Brieder", "Christof Verhoeven"],
      licenses: ["WTFPL"],
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      links: %{
        "GitHub" => "https://github.com/ChristofVerhoeven/currency_formatter",
        "Docs" => "http://smeevil.github.io/currency_formatter/"
      }
    ]
  end
end
