defmodule Javex.Actress do
  use Javex.Web, :model

  schema "actresses" do
    field :name, :string
    field :image, :string
    field :view, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :image, :view])
    |> validate_required([:name, :image, :view])
  end
end
