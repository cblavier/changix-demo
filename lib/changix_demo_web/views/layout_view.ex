defmodule ChangixDemoWeb.LayoutView do
  use ChangixDemoWeb, :view

  alias ChangixDemoWeb.ChangelogController

  defdelegate changelog_entries, to: ChangelogController
end
