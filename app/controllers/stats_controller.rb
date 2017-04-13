class StatsController < ApplicationController

  def streak_data
    Routine.all.each do |routine|
      routine.streak
    end
  end

end
