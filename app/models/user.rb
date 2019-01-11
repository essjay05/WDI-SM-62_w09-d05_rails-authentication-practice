class User < ApplicationRecord
    #invoke bycrypt to require AND hash passwords when adding new users
    has_secure_password
end
