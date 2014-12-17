module OverviewHelper

  def percentage_for height
    height.gsub(',', '.').to_f * 100 / 3.0
  end

  def time_decorator timestamp
    timestamp.strftime("%I:%M%p")
  end
end
