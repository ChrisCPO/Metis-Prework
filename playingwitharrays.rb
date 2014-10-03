class Array
  require "debugger"
debugger
  def eachEven(&wasABlock_nowAProc)
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)
    end
  end
end

["apple", "bad apple","cherry","durian"].eachEven do |fruit|
  puts "yum I just love #{fruit} pies, don\'t your?"
end

[1,2,3,4,5].eachEven do |oddball|
  puts oddball.to_s + "is not an even number"
end



