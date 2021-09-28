
class LookAndSay
    attr_accessor :seed 

    def initialize (seed='1')
        @seed = seed
    end

    def self.getNext (current)           #static

        current = current.to_s.delete(" \t\r\n")  
        times = 1
        nxt = ''
        i=0
        while current[i] do
            if current[i] == current[i + 1] 
                times += 1  
            else
                nxt.concat(times.to_s)
                nxt.concat(current[i])
                times = 1
            end
            i += 1
        end
        return nxt
    end

    def getSequens (length=5)
        length = length.to_i
        return false if (length == nil || length < 1)
        length += 1
        current = @seed.to_s.delete(" \t\r\n")
        result = ''
        (1...length).each do
            result += current + "\n"
            current = LookAndSay.getNext(current)    
        end
        return result
    end
end

seq = LookAndSay.new(22)

puts LookAndSay.getNext('')


