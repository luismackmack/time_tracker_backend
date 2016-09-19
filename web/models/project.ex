defmodule TimeTrackerBackend.Project do
  use TimeTrackerBackend.Web, :model


  schema "projects" do
    field :name, :string
    belongs_to :organization, Organization

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end