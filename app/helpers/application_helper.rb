module ApplicationHelper
  def resource
    @resource ||= User.new
  end
  def resource_name
    :user
  end
  def rsource_class
    User
  end
  def devise_mapping
    Devise.mappings[:user]
  end
  
end
