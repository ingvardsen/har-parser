# Har Parser CLI


**Simple CLI (Command Line Tool) for extracting network traffic**

This is an Elixir leaning project. My motivation are both to explore Elixir, and also to create this small tool for use when reverse engineering web apps. Especially API usage.

Extracting network traffic from HAR (HTTP Archive) file. The files are created and stored from browsers, and are a tracking log of activities. A friendly advise - `Har` files can store sensitive data, so just be careful what you store.

Outputs a list of `Status`, `method` and `URL`, and can be filtered by string match on the URL.


## Build / Installation / Usage
Requires Erland and Elixir. Installation details [here](https://elixir-lang.org/install.html)
```bash
# Launch unit tests
mix test

# Launch from mix
mix run -e 'JSON.Cli.main(["./path/and/harfile.har,"<some-filter>"])'

# Build binary
mix escript.build

# Launch binary
./har_parser ~/data/somehar.har http://someurl.org/api/

# More filter examples
./har_parser ~/data/my.har http
./har_parser ~/data/my.har api/v1/
./har_parser ~/data/my.har domaine.com
```