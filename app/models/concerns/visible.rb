module Visible
    extend ActiveSupport::Concern

    VALID_STATUSES = ['public', 'private', 'archived']

    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end
    
    class_methods do
        def public_count
            where(status: 'public').count #Cuenta todos los que tengan el status "public"
            
        end
        def private_count
            where(status: 'private').count #Cuenta todos los que tengan el status "private"
            
        end
        def archived_count
            where(status: 'archived').count 
            
        end
    end

    def archived?
        status == 'archived'
    end
end