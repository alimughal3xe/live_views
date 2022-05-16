defmodule LiveViewWeb.LivePage do
  use Phoenix.LiveView
  use LiveViewWeb, :live_view

  # def render(assigns) do
  #   ~H"""
  #  live page
  #   """
  # end

  def mount(session, params, socket) do
    IO.inspect(session, label: "session")
    IO.inspect(params, label: "params")
    IO.inspect(socket, label: "socket")
    {:ok,  assign(socket, :value, "random svalue")}
  end
end