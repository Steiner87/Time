
 class A
 
    def initialize x,y
        @ts1=x
		@ts2=y
		time @ts1,@ts2
    end

	def time ts1,ts2
		x=ts1-ts2 #вычисляем разницу двух дат в системе юникс
		t=Time.at(x)# t-дата стандартного вида


		d=t.day.to_i.to_s 
		h=t.hour.to_i.to_s
		m=t.min.to_i.to_s
		s=t.sec.to_i.to_s

		#Определяем какие слова подставлять
		if 	d.to_i!=0
			if d[-1]=='1' && d[-2]!='1'
				print "#{t.day} day "
			else
				print "#{t.day} days "
			end
		end
		
		if 	h.to_i!=0
			if h[-1]=='1' && h[-2]!='1'
				print "#{t.hour} hour "
			else
				print "#{t.hour} hours "
			end
		end
		
		if 	m.to_i!=0
			if m[-1]=='1' && m[-2]!='1'
				print "#{t.min} min "
			else
				print "#{t.min} minuts "
			end
		end
		
		if 	s.to_i!=0
			if s[-1]=='1' && s[-2]!='1'
				print "and #{t.sec} sec "
			else
				print "and #{t.sec} seconds "
			end
		end

		return 1 
	end
 
 
end
 
 obj=A.new rand(Time.now.to_i),2592000 # Создаем объект и вводим в него два значения в формате юникс.
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
