
class LookAndSay
    attr_accessor :seed 

    def initialize (seed='1')
        @seed = seed
    end

    def self.getNext (current)
        i=0
        times = 1
        nxt = ''
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

    def printSequens (length=5)
        
        length += 1
        current = @seed
        nxt = ''
        
        (1...length).each do
            puts current
            current = LookAndSay.getNext(current)
            
        end
    end
end

seq = LookAndSay.new


seq.seed = ''
seq.printSequens

