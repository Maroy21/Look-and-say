
class LookAndSay
    attr_accessor :seed 

    def initialize (seed='1')
        @seed = seed
    end

    def printSequens (length=5)
        count = 1
        current = @seed
        nxt = ''
        puts @seed
        while count < length do
            last_char = ''
            times = 0
        
            current.each_char {|char|               

                if last_char == ''
                    last_char = char
                end
                if char == last_char
                    times += 1              
                else  
                    nxt.concat(times.to_s)
                    nxt.concat(last_char)
                    last_char = char
                    times = 1
                end
            }
            nxt.concat(times.to_s)
            nxt.concat(last_char)
            puts nxt
            current = nxt
            nxt = ''
            count += 1
        end
    end
end

seq = LookAndSay.new
seq.seed = '1'
seq.printSequens(50)

