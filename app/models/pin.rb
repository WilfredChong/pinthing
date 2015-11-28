class Pin < ActiveRecord::Base
	
	Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.9.2-Q16'
	belongs_to :user

	#has_attached_file :image, styles: { medium: "1000x1000>"}
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	#validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
