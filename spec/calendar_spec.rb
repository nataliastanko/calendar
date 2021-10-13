# frozen_string_literal: true

require_relative '../lib/calendar_tools'

RSpec.describe Calendar do
  subject(:cal) { described_class.new }

  let(:jan2021) { described_class.new(2021, 1) }
  let(:feb2021) { described_class.new(2021, 2) }
  let(:mar2021) { described_class.new(2021, 3) }
  let(:apr2021) { described_class.new(2021, 4) }
  let(:may2021) { described_class.new(2021, 5) }
  let(:jun2021) { described_class.new(2021, 6) }
  let(:jul2021) { described_class.new(2021, 7) }
  let(:aug2021) { described_class.new(2021, 8) }
  let(:sep2021) { described_class.new(2021, 9) }
  let(:oct2021) { described_class.new(2021, 10) }
  let(:nov2021) { described_class.new(2021, 11) }
  let(:dec2021) { described_class.new(2021, 12) }

  let(:feb2020) { described_class.new(2020, 2) }
  let(:feb2019) { described_class.new(2019, 2) }
  let(:feb2018) { described_class.new(2018, 2) }
  let(:feb2017) { described_class.new(2017, 2) }
  let(:feb2016) { described_class.new(2016, 2) }
  let(:feb2015) { described_class.new(2015, 2) }

  let(:today) { Date.today }

  describe '#days_of_week' do
    it 'prints days of the week' do
      expect(cal.days_of_week).to eq('Sun Mon Tue Wed Thu Fri Sat')
    end
  end

  context 'with parameters given' do
    describe '#number_of_days_in_month' do
      it 'returns number of days in the month' do
        expect(jan2021.number_of_days_in_month).to eq(31)
        expect(feb2021.number_of_days_in_month).to eq(28)
        expect(mar2021.number_of_days_in_month).to eq(31)
        expect(apr2021.number_of_days_in_month).to eq(30)
        expect(may2021.number_of_days_in_month).to eq(31)
        expect(jun2021.number_of_days_in_month).to eq(30)
        expect(jul2021.number_of_days_in_month).to eq(31)
        expect(aug2021.number_of_days_in_month).to eq(31)
        expect(sep2021.number_of_days_in_month).to eq(30)
        expect(oct2021.number_of_days_in_month).to eq(31)
        expect(nov2021.number_of_days_in_month).to eq(30)
        expect(dec2021.number_of_days_in_month).to eq(31)

        expect(feb2020.number_of_days_in_month).to eq(29)
        expect(feb2019.number_of_days_in_month).to eq(28)
        expect(feb2018.number_of_days_in_month).to eq(28)
        expect(feb2017.number_of_days_in_month).to eq(28)
        expect(feb2016.number_of_days_in_month).to eq(29)
        expect(feb2015.number_of_days_in_month).to eq(28)
      end
    end

    describe '#month_year' do
      it 'prints month and year' do
        expect(jan2021.month_year).to eq('January 2021')
        expect(feb2021.month_year).to eq('February 2021')
        expect(mar2021.month_year).to eq('March 2021')
      end
    end
  end

  context 'with default parameters' do
    describe '#month_year' do
      it 'prints current month and year' do
        expect(cal.month_year).to eq(today.strftime('%B %Y'))
      end
    end
  end
end
