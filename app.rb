
def time ts1,ts2
	x=ts1-ts2
	t=Time.at(x)


	arr=t.day.to_i.to_s


	if arr[-1]=='1' && arr[-2]!='1'
		print "#{t.day} day "
	else
		print "#{t.day} days "
	end
	
		if arr[-1]=='1' && arr[-2]!='1'
		print "#{t.hour} hour "
	else
		print "#{t.hour} hours "
	end
	
		if arr[-1]=='1' && arr[-2]!='1'
		print "#{t.min} min "
	else
		print "#{t.min} minuts "
	end
	
	if arr[-1]=='1' && arr[-2]!='1'
		print "#{t.sec} sec "
	else
		print "#{t.sec} seconds "
	end



end

time rand(Time.now.to_i),2592000

