module ApplicationHelper

    def has_role?(role)
        current_user && current_user.userable_type == role
    end
    
end
