defmodule CounterWeb.CounterLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <h1>Count: <%= @count %></h1>
    <button phx-click="increment">+</button>
    <button phx-click="decrement">-</button>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 1)}
  end

  def handle_event("increment",_, socket) do
    count = socket.assigns.count + 1
    {:noreply, assign(socket, :count, count)}
  end


  def handle_event("decrement",_, socket) do
    count = socket.assigns.count - 1
    {:noreply, assign(socket, :count, count)}
  end

end
