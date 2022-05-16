defmodule LiveViewWeb.LiveCounter do
  use Phoenix.LiveView
  use LiveViewWeb, :live_view

  def mount(_session, _params, socket) do
    {:ok,  assign(socket, :counter, 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, update(socket, :counter, &(&1 + 1))}
  end
  
  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :counter, &(&1 - 1))}
  end
end