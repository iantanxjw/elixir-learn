defmodule LearnPhoenixWeb.RoomController do
	use LearnPhoenixWeb, :controller
	def index(conn, _params) do
		rooms = LearnPhoenix.Conversation.list_rooms()
		render conn, "index.html", rooms: rooms
	end
end