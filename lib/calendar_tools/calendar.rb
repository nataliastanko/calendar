# frozen_string_literal: true

##
# Calendar for current month
class Calendar
  # Create a new instance of Calendar
  #
  # ==== Examples
  #
  #   Calendar.new
  #   Calendar.new(10, 2021)
  #
  # @param year [Integer] year, optional
  # @param month [Integer] month, optional
  def initialize(year = nil, month = nil)
    @date = if year && month
              Date.new(year, month, 1)
            else
              @date = Date.today
            end
  end

  def days_of_week
    Date::ABBR_DAYNAMES.inject { |result, day| result + " #{day}" }.to_s
  end

  # @param month [Integer] number of the month
  def number_of_days_in_month
    ((Date.new(@date.year, @date.month, 1) >> 1) - 1).day
  end

  def month_year
    @date.strftime('%B %Y')
  end

  # Example result:
  #
  # October 2021
  # Su Mo Tu We Th Fr Sa
  #                 1  2
  # 3  4  5  6  7  8  9
  # 10 11 12 13 14 15 16
  # 17 18 19 20 21 22 23
  # 24 25 26 27 28 29 30
  # 31
  def print
    puts month_year
    puts days_of_week
    puts number_of_days_in_month
  end
end
