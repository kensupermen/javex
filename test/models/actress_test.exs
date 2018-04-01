defmodule Javex.ActressTest do
  use Javex.ModelCase

  alias Javex.Actress

  @valid_attrs %{image: "some image", name: "some name", view: "some view"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Actress.changeset(%Actress{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Actress.changeset(%Actress{}, @invalid_attrs)
    refute changeset.valid?
  end
end
