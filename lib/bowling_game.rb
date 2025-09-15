# frozen_string_literal: true

module Bowling; end

pattern = File.join(File.dirname(__FILE__), 'bowling', '*.rb')
Dir[pattern].each { |filepath| require_relative filepath }
