#!/usr/bin/env ruby
#TextMe app text messages transactions statistics

from = ARGV[0].scan(/from:(.\w+)/).join
to = ARGV[0].scan(/to:(.\d+)/).join
flags = ARGV[0].scan(/flags:(.+-\d)/).join
puts "#{from},#{to},#{flags}"
