class ApplicationController < ActionController::Base
    helper_method :tags

    protected
        def tags
            Tag.all
        end
end
