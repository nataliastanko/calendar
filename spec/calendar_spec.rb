# frozen_string_literal: true

require_relative '../calendar'

RSpec.describe 'calendar' do
  it 'prints current month and year' do
    expect(Calendar.new.current_month_year).to eq('October 2021')
  end
end
