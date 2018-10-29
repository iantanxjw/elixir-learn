defmodule LearnPhoenix.Conversation do
	alias LearnPhoenix.Repo
	alias LearnPhoenix.Conversation.Room
  def list_rooms do
    Repo.all(Room)
  end
end