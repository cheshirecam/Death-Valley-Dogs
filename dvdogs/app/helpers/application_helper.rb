# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def edit_icon
    image_tag("edit-icon16.png", :border=>0, :size=> "16x16")
  end

  def edit_icon_large
    image_tag("edit-icon32.png", :border=>0, :size=> "32x32")
  end



  def delete_icon
    image_tag("delete-icon16.png", :border=>0, :size=> "16x16")
  end
  
  def delete_icon_large
    image_tag("delete-icon.png", :border=>0, :size=> "32x32")
  end
  


  def back_icon_large
    image_tag("back-icon32.png", :border=>0, :size=> "32x32")
  end



  def list_icon_large
    image_tag("up-icon32.png", :border=>0, :size=> "32x32")
  end


  def new_icon_large
    image_tag("add-2-icon32.png", :border=>0, :size=> "32x32")
  end


  def writeup_icon_large
    image_tag("documents-icon32.png", :border=>0, :size=> "32x32")
  end

  def writeup_icon
    image_tag("documents-icon32.png", :border=>0, :size=> "16x16")
  end
  
  

end
