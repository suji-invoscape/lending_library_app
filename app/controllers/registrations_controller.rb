class RegistrationsController < Devise::RegistrationsController
    skip_before_filter :set_dd_flash_message, :except => [:edit]

    
end