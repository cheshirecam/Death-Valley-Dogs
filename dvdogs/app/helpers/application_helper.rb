# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def edit_icon
    image_tag("edit-icon16.png", :border=>0)
  end

  def edit_icon_large
    image_tag("edit-icon32.png", :border=>0)
  end

  def delete_icon
    image_tag("delete-icon16.png", :border=>0)
  end
  
  def delete_icon_large
    image_tag("delete-icon32.png", :border=>0)
  end
  
  def back_icon_large
    image_tag("back-icon32.png", :border=>0)
  end

  def new_icon_large
    image_tag("add-1-icon32.png", :border=>0)
  end
end
