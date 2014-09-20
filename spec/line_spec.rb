require_relative 'spec_helper'

module Laser
  module Cutter
    module Geometry
      describe Line do
        let(:p1) { Point.new(1, 1) }
        let(:p2) { Point.new(7, 11) }
        let(:center) { Point.new((7+1)/2, (11+1)/2) }
        let(:line) { Line.new(p1, p2) }

        context '#center' do
          it 'should calculate' do
            expect(line.center).to eql(center)
          end
        end

        context '#length' do
          let(:line1) { Line.new(Point.new(0, 0), Point.new(0, 10)) }
          let(:line2) { Line.new(Point.new(0, 0), Point.new(-10, 0)) }
          let(:line3) { Line.new(Point.new(0, 0), Point.new(3, 4)) }
          it 'should calculate' do
            expect(line1.length).to be_within(0.001).of(10)
            expect(line2.length).to be_within(0.001).of(10)
            expect(line3.length).to be_within(0.001).of(5)
          end
        end

      end
    end
  end
end