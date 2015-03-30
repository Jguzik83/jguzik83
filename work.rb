class TempConvert

  def get_temp
    while true
      puts "Please tell me the temperature you want to convert:"
      @temp = gets.chomp
      puts "Do you want to convert #{@temp} from Fahrenheit to Celcius(type celcius) or from Celcius to Fahrenheit(type fahrenheit)?"
      conversion = gets.chomp
      if conversion.downcase == "fahrenheit"
        ctof
        break
      elsif conversion.downcase == "celcius"
        ftoc
        break
      else
        puts "Please enter a correct conversion choice!"
      end
    end
    @result
  end

  def ctof
    @result = ((@temp.to_i * 9.0) /5) + 32
  end

  def ftoc
    @result = ((@temp.to_i - 32) * 5.0) / 9.0
  end

end

test = TempConvert.new
p test.get_temp