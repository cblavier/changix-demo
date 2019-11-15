defmodule ChangixDemoWeb.PageController do
  use ChangixDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
