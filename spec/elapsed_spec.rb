require 'spec_helper'
require 'elapsed'
require 'timecop'

describe Elapsed do

  it 'should calculate difference between two dates' do
    Elapsed.calculate('4-24-2010', '4-25-2012').should eql('2 years and 1 day')
  end

  it 'should calculate difference between two dates' do
    Elapsed.calculate('10:34pm', '6:13am').should eql('16 hours and 21 minutes')
  end

  it 'should calculate difference between one date (and assume now)' do
    right_now = Time.local(2013, 9, 1, 12, 0, 0)
    Timecop.freeze(right_now)
    Elapsed.calculate('4-24-2010').should eql('3 years, 4 months, and 7 days')
    Timecop.return
  end

  it 'should calculate difference between one date and the word now' do
    right_now = Time.local(2014, 10, 1, 12, 0, 0)
    Timecop.freeze(right_now)
    Elapsed.calculate('4-24-2010', 'now').should eql('4 years, 5 months, and 9 days')
    Timecop.return
  end

end