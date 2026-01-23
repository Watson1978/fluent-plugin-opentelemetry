# frozen_string_literal: true

require "fluent/plugin/input"
require "leak_profiler"

module Fluent::Plugin
  class LeakProfiler < Input
    Fluent::Plugin.register_input("leak_profiler", self)

    def start
      super

      ::LeakProfiler.new(output_dir: "/fluentd/leak_profiler").report(interval: 15, max_referrers: 5, run_gc: true)
    end
  end
end
