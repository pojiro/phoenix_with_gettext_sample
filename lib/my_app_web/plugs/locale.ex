defmodule MyAppWeb.Plug.Locale do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    case conn.params["hl"] || get_session(conn, :locale) do
      nil ->
        conn

      locale ->
        if locale in ["en", "ja"] do
          Gettext.put_locale(locale)
          put_session(conn, :locale, locale)
        else
          conn
        end
    end
  end
end
