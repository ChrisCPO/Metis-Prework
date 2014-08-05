linewidth = 40
title= "Table Of Contents"

ch = ["chapter 1:Numbers" ,"page 1","chapter 2:Letters","page 2", "chapter 3:hobbies", "page 3"]
puts title.center(linewidth)

puts ch[0] + ch[1].rjust(linewidth)
puts ch[2] + ch[3].rjust(linewidth)
puts ch[4] + ch[5].rjust(linewidth)
