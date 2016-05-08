class PSL_valid
	
	Mnozne = [1,3,7,9,1,3,7,9,1,3,1]
	
	def initialize(str1)
		@PSL = str1.to_s
	end
	

	def validate
		print "sprawdzam: " + @PSL + "\n"
		puts psl_liczby.size == 11 && psl_chck % 10 == 0
	end
	

	private	
	def psl_liczby
      @PSL.split("").select{|digit| digit.to_i.to_s == digit}.map(&:to_i)
    end
	
	def psl_chck
      Mnozne.each_with_index.inject(0){|sum, (factor, idx)| sum + factor * psl_liczby[idx]}
    end

	

end

p1 = PSL_valid.new(11111111111)
p2 = PSL_valid.new(22222222222)
p3 = PSL_valid.new("alamakonia.")
p1.validate
p2.validate
p3.validate