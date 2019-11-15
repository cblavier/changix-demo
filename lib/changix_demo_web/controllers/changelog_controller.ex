defmodule ChangixDemoWeb.ChangelogController do
  use ChangixDemoWeb, :controller
  use Changix

  def index(conn, _params) do
    render(conn, "index.html", entries: changelog_entries())
  end

  def show(conn, %{"id" => changed_at}) do
    case changelog_entry(changed_at) do
      nil -> redirect(conn, to: Routes.changelog_path(conn, :index))
      entry -> render(conn, "show.html", entry: entry)
    end
  end
end
