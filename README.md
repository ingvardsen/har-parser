# Har Parser CLI


**Simple CLI (Command Line Tool) for extracting network traffic**

This is an Elixir leaning project. My motivation are both to explore Elixir, and also to create this small tool for use when reverse engineering web apps. Especially API usage.

Extracting network traffic from HAR (HTTP Archive) file. The files are created and stored from browsers, and are a tracking log of activities.

Outputs a list of `Status`, `method` and `URL's`, and can be filtered by string match on the URL.


## Build / Installation
Requires Erland and Elixir. Installation details here 
```bash
# launch unit tests
mix test

# build binary
mix escript.build
```
## Usage

```bash
# Examples
..
```
