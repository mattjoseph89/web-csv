filename = ARGV.first

puts "We're going to open #{"file.txt"}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open("file.txt", 'a+')

puts "Now I'm going to ask you for way too much information."

print "Name: "
line1 = $stdin.gets.chomp
print "Date: "
line2 = $stdin.gets.chomp
print "Payee: "
line3 = $stdin.gets.chomp
print "Category: "
line4 = $stdin.gets.chomp
print "Inflow: "
line5 = $stdin.gets.chomp
print "Outflow: "
line6 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write(", ")
target.write(line2)
target.write(", ")
target.write(line3)
target.write(", ")
target.write(line4)
target.write(", ")
target.write(line5)
target.write(", ")
target.write(line6)
target.write("/n")

puts "And finally, we close it."
target.close