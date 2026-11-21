#!/usr/bin/env ruby
# Testdatei: Kommentar
require 'json'

MAX_ITEMS = 16
RATIO     = 3.14159
MASK      = 0xFF
LABEL     = "Tab\t \"quoted\" und #{MAX_ITEMS}"
RAW       = 'einfach \n'

module Geometry
  class Shape
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def area
      raise NotImplementedError, "#{self.class} fehlt"
    end
  end

  class Circle < Shape
    def initialize(r)
      super('circle')
      @r = r
    end

    def area = Math::PI * @r**2
  end
end

shapes = [Geometry::Circle.new(2), Geometry::Circle.new(3.5)]
shapes.each_with_index do |s, i|
  puts "#{i}: #{s.name} #{s.area.round(2)}" if s.area > 1
end
pattern = /\A(\w+)-(\d+)\z/i
data  = { name: 'x', "count" => 3, :ok => true, nothing: nil }
puts JSON.generate(data) unless pattern.match?('a-1')
