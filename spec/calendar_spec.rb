# frozen_string_literal: true

require_relative '../lib/calendar_tools'

RSpec.describe 'calendar' do
  it 'prints current month and year' do
    expect(CurrentMonth.new.current_month_year).to eq('October 2021')
  end
end
