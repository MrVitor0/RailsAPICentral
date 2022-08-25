class User < ApplicationRecord

    #set table to use
    self.table_name = "users"
    self.primary_key = "id"

    #attr_accessor 
        #:char_name, 
        #:char_email, 
        #:int_document, 
        #:date_dt_birth, 
        #:char_cep, 
        #:char_street, 
        #:int_neighbourhood, 
        #:city, 
        #:state, 
        #:created_at, 
        #:updated_at
end
