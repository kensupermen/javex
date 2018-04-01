defmodule Javex.Repo.Migrations.CreateActress do
  use Ecto.Migration

  def change do
    create table(:actresses) do
      add :name, :string
      add :image_url, :string
      add :view, :integer, default: 0

      timestamps()
    end
  end
end
