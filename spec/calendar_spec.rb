# frozen_string_literal: true

require_relative '../lib/calendar_tools'
# require 'rspec/its'

RSpec.describe Calendar do
  subject(:calendar) { described_class.new }

  let(:today) { Date.today }

  describe '#days_of_week' do
    it 'prints days of the week' do
      expect(calendar.days_of_week).to eq('Sun Mon Tue Wed Thu Fri Sat')
    end
  end

  describe '#month_year' do
    context 'with custom parameters' do
      let(:month_year) { ->(year, month) { described_class.new(year, month).month_year } }

      it 'prints custom month and year' do
        expect(month_year.call(2021, 3)).to eq 'March 2021'
        expect(month_year.call(2015, 2)).to eq 'February 2015'
        expect(month_year.call(1815, 12)).to eq 'December 1815'
      end
    end
    context 'with default parameters' do
      it 'prints current month and year' do
        expect(calendar.month_year).to eq(today.strftime('%B %Y'))
      end
    end
  end

  describe '#number_of_days_in_month' do
    context 'with custom parameters' do
      let(:days_in_month) { ->(year, month) { described_class.new(year, month).number_of_days_in_month } }

      it 'returns number of days in the month' do
        expect(days_in_month.call(2021, 1)).to eq 31
        expect(days_in_month.call(2021, 2)).to eq 28
        expect(days_in_month.call(2021, 3)).to eq 31
        expect(days_in_month.call(2021, 4)).to eq 30
        expect(days_in_month.call(2021, 5)).to eq 31
        expect(days_in_month.call(2021, 6)).to eq 30
        expect(days_in_month.call(2021, 7)).to eq 31
        expect(days_in_month.call(2021, 8)).to eq 31
        expect(days_in_month.call(2021, 9)).to eq 30
        expect(days_in_month.call(2021, 10)).to eq 31
        expect(days_in_month.call(2021, 11)).to eq 30
        expect(days_in_month.call(2021, 12)).to eq 31

        expect(days_in_month.call(2020, 2)).to eq 29
        expect(days_in_month.call(2016, 2)).to eq 29
        expect(days_in_month.call(2017, 2)).to eq 28
        expect(days_in_month.call(1815, 2)).to eq 28
      end
    end
  end
end
