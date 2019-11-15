defmodule ChangixDemoWeb.ChangelogView do
  use ChangixDemoWeb, :view

  def changelog_kind_badge(:new), do: changelog_kind_badge("success", "Nouveauté")
  def changelog_kind_badge(:improvement), do: changelog_kind_badge("info", "Amélioration")
  def changelog_kind_badge(:bugfix), do: changelog_kind_badge("danger", "Bugfix")
  def changelog_kind_badge(kind), do: changelog_kind_badge("default", to_string(kind))

  defp changelog_kind_badge(class, label) do
    raw("<span class='badge badge-#{class}'>#{label}</span>")
  end
end
