# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def edit_icon
    image_tag("grunge_pencil.png", :border=>0)
  end

  def edit_icon_large
    image_tag("grunge_pencil.png", :border=>0)
  end

  def delete_icon
    image_tag("grunge_trash.png", :border=>0)
  end
  
  def delete_icon_large
    image_tag("grunge_trash.png", :border=>0)
  end
  
  def back_icon_large
    image_tag("grunge_left_arrow.png", :border=>0)
  end

  def list_icon_large
    image_tag("grunge_up_arrow.png", :border=>0)
  end

  def new_icon_large
    image_tag("grunge_add.png", :border=>0)
  end
  
  def paws_icon
    image_tag("grunge_paws.png", :border=>0)
  end

  def boots_icon
    image_tag("grunge_boots.png", :border=>0)
  end

end
