# LearnPhoenix

First install Homebrew if you don't already have it then install these: 
* `brew install elixir`
* `brew install postgresql`
* `brew install node`

Install Phoenix:
* mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
* mix local.hex
* createuser -d postgres

To start your Phoenix server:

  * cd learn_phoenix
  * Not sure if you need to do `mix ecto.create` so try the server first at the bottom.
  * mix phx.server

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
