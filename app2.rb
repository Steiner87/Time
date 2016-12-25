

def get_dates years,months,days,hours=0,minuts=0,seconds=0
    
#   1) Создаем объект date и присваиваем ему введенные значения
	date=Time.new(years,months,days,hours,minuts,seconds) 
    
#   2)Переводим объект в цифровое Unix отображение
	date_unix=date.to_i #Дата в Unix системе исчесления
       
    puts date.strftime "%a, %d %b %Y %H:%M:%S" #Выводим дату в заданом формате впервый раз
    date_unix=date.to_i
    
    first_day=days #Фиксируем день с которого был начан отсчет
    
#   3) Создаем цикл для вывода даты с интервалом в 15 мин 
    
    x=true
    while x
        hours1=Time.at(date_unix).hour
        date_unix+=15*60
        hours2=Time.at(date_unix).hour
        if hours1!=hours2
            x=false
        end
        
        get_settings date_unix
    
    end
    puts '==============================================='
#   4) Создаем цикл для вывода даты с интервалом в 30 мин 
    x=0
    while x!=5
        hours1=Time.at(date_unix).hour
        date_unix+=30*60
        hours2=Time.at(date_unix).hour
        if hours1!=hours2
            hours1=hours2
            x+=1
        end

        
        get_settings date_unix
    
    end
    
     puts '==============================================='
#   5) Создаем цикл для вывода даты с интервалом в 1 час
        x=0
    while x!=7
        
        date_unix+=60*60

        x+=1

        get_settings date_unix
    
    end
    
     puts '==============================================='
#   6) Создаем цикл для вывода даты с интервалом в 24 часа 
        x=first_day
    while x!=first_day+4
        
        date_unix+=24*60*60

        x+=1
        
        get_settings date_unix
    
    end
    
     puts '==============================================='
    
  return 1  
end 



def get_settings date_unix
    
        years=Time.at(date_unix).year
        months=Time.at(date_unix).month
        days=Time.at(date_unix).day
        hours=Time.at(date_unix).hour
        minuts=Time.at(date_unix).min
        seconds=Time.at(date_unix).sec

        date=Time.new(years,months,days,hours,minuts,seconds)
        puts date.strftime "%a, %d %b %Y %H:%M:%S"
    
end

get_dates 2016,12,22
#get_dates 2017,12,22,19,0,0