require_relative 'KnightPath'


s = KnightPath.new

s.find_path([7,4],[4,6])
#s.solution.to_s
s.visual
puts

knight = "\u265E"
print "| #{knight.encode('utf-8')} |\n"