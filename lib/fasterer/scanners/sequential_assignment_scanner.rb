require 'fasterer/sequential_assignment'
require 'fasterer/offense'
require 'fasterer/scanners/offensive'

module Fasterer
  class SequentialAssignmentScanner
    include Fasterer::Offensive

    attr_reader :element

    def initialize(element)
      @element = element
      check_offense
    end

    private

    def check_offense
      if sequential_assignment
        add_offense(:sequential_assignment)
      end
    end

    def sequential_assignment
      @sequential_assignment ||= SequentialAssignment.new(element)
    end
  end
end
