defmodule LearnPhoenix.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      create unique_index(:rooms, [:name])
      add :name, :string, null: false, size: 25
      add :description, :string
      add :topic, :string, size: 100

      timestamps()
    end

  end
end
