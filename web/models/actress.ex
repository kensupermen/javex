defmodule Javex.Actress do
  use Javex.Web, :model

  schema "actresses" do
    field :name, :string
    field :image_url, :string
    field :view, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :image_url, :view])
    |> validate_required([:name, :image_url, :view])
  end
end
