class Users::RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => authenticated_path
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        respond_with resource, :location => unauthenticated_path
      end
    else
      respond_with resource
    end
  end
  private
  # Notice the name of the method
  def sign_up_params
    params.require(:user).permit(:enterprice,:rfc, :email, :password, :password_confirmation)
  end
end
