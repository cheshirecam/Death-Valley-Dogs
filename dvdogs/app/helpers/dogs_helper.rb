module DogsHelper

  def paws_icon_black
    image_tag("dog-paw-print-black.gif", :border=>0, :size=> "20x20")
  end

  def boots_icon_black
    image_tag("dog-boot-print-black.png", :border=>0, :size=> "20x20")
  end

  def paws_icon_white
    image_tag("dog-paw-print-white.gif", :border=>0, :size=> "30x30")
  end

  def boots_icon_white
    image_tag("dog-boot-print-white.png", :border=>0, :size=> "30x30")
  end

  def age(birthday)
    age = (DateTime.now - birthday) / 365.25 # or (1.year / 1.day)
    age.to_i
  end
  
end
