module Shout

  # def yell_angrily(words)
  #   words + "!!!!" + "@/%*("
  # end

  # def yell_happily(words)
  #   words + "!" + "  :)"
  # end

  def sales_pitch(product)
    puts "Hey, wouldn't you like some nice fresh #{product.downcase}?? It's great, really..."
  end

  def price_yeller(price)
    puts "Hey now, get it right here, folks...only #{price.to_i} dollars. That's right!"
  end
end

class Promoter
  include Shout

end

class FruitStandGuy
  include Shout
end 


ralphie = FruitStandGuy.new
ralphie.sales_pitch("Grapes")
bryan = Promoter.new
bryan.sales_pitch("comedy!")
bryan.price_yeller("8")
