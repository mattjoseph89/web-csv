def add_line(target, line1, line2, line3, line4, line5, line6)
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
  target.write("\n")

  target.close  
end