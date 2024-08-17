class Raindrops
  def self.convert(number)
    drops = ''
    
    if number % 3 == 0
      drops = drops + "Pling"
    end
    
    if number % 5 == 0
      drops = drops + "Plang"
    end
    
    if number % 7 == 0
      drops = drops + "Plong"
    end
    
    if drops == ''
      drops = number.to_s
    end
    
    drops
  end
end
