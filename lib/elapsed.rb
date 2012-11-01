require 'elapsed/version'
require 'active_support/core_ext/numeric/time'
require 'action_view'
require 'chronic'
require 'dotiw'

include ActionView::Helpers::DateHelper
include ActionView::Helpers::TextHelper
include ActionView::Helpers::NumberHelper

module Elapsed

  def self.calculate(start_time=Time.now, end_time=Time.now)
    start_time = parse_time(start_time)
    end_time = parse_time(end_time)
    seconds = difference_in_seconds(start_time, end_time).abs
    distance_of_time(seconds)
  end

  private

    def self.parse_time(time)
      Chronic.parse(time.to_s)
    end

    def self.difference_in_seconds(start_time, end_time)
      Chronic::Span.new(start_time, end_time).width
    end

end
