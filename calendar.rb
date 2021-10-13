# frozen_string_literal: true

require 'date'

##
# Calendar for current month
class Calendar
  DAYS_IN_MONTH = {
    'October' => 31,
    'November' => 30
  }.freeze

  def initialize
    @date = Date.today
  end

  def current_month_year
    @date.strftime('%B %Y')
  end

  def days_of_the_week
    Date::ABBR_DAYNAMES.inject { |result, day| result + " #{day}" }
  end

  def number_of_days_in_month(month)
    DAYS_IN_MONTH[month]
  end

  def print
    p current_month_year
    p days_of_the_week
    p number_of_days_in_month 'October'
  end
end
