defmodule Lasagna do
  @time_in_minutes 40
  @minutes_to_prepare 2
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
    @time_in_minutes
  end

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(actual_minutes) when actual_minutes < @time_in_minutes do
    expected_minutes_in_oven() - actual_minutes
  end

  # Please define the 'preparation_time_in_minutes/1' function

  def preparation_time_in_minutes(layers) do
    layers * @minutes_to_prepare
  end

  # Please define the 'total_time_in_minutes/2' function

  def total_time_in_minutes(layers, minutes_in_oven) do
    preparation_time_in_minutes(layers) + minutes_in_oven
  end

  # Please define the 'alarm/0' function
  def alarm() do
    alarm = "Ding!"
    IO.inspect(alarm)
  end
end
