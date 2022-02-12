class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :set_search
    before_action :configure_permitted_parameters, if: :devise_controller?

    def set_search
        @search = Room.ransack(params[:q])
        @search_rooms = @search.result
    end

    protected
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :userimage, :userinfo])
    end

    def after_sign_in_path_for(resource)
        "/users/edit"
    end
end
