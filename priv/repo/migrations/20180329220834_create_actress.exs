defmodule Javex.Repo.Migrations.CreateActress do
  use Ecto.Migration

  def change do
    create table(:actresses) do
      add :name, :string
      add :image, :string
      add :view, :string

      timestamps()
    end
  end
end
