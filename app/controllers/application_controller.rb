class ApplicationController < ActionController::Base
    helper_method :tags
    layout :layout_by_resource

    private

    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end

    protected
        def tags
            Tag.all
        end
end
