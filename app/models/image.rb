class Image < ApplicationRecord
    has_attached_file :photo, {:styles => {:large => "640x640>",
                                         :small => "200x200>", 
                                         :thumb => "60x60>"}}
    validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"],:message => "please select valid format."
end
