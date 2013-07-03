class SessionsController < Devise::SessionsController
    skip_before_filter :set_dd_flash_message

    
end