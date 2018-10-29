defmodule LearnPhoenixWeb.RoomController do
	use LearnPhoenixWeb, :controller
	alias LearnPhoenix.Conversation
	alias LearnPhoenix.Conversation.Room
	def index(conn, _params) do
		rooms = LearnPhoenix.Conversation.list_rooms()
		render conn, "index.html", rooms: rooms
	end

	def new(conn, _params) do
	  	changeset = Conversation.change_room(%Room{})
  		render conn, "new.html", changeset: changeset
	end

	def create(conn, %{"room" => room_params}) do
		case Conversation.create_room(room_params) do
		{:ok, room} ->
		  conn
		  |> put_flash(:info, "Room created successfully.")
		  |> redirect(to: room_path(conn, :index))

		{:error, %Ecto.Changeset{} = changeset} ->
		  render(conn, "new.html", changeset: changeset)
		end
	end

	def show(conn, %{"id" => id}) do
		room = Conversation.get_room!(id)
  		render(conn, "show.html", room: room)
	end
end