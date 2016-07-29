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
    @dollar = price.to_i < 2 ? " dollar" : " dollars"
    puts "Hey now, get it right here, folks...only #{price.to_i}#{@dollar}!!! That's right, get it here now..."
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
ralphie.price_yeller(1)
lucky_louie = Promoter.new
lucky_louie.sales_pitch("comedy!")
lucky_louie.price_yeller("8")
