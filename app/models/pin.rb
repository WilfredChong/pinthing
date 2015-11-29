class Pin < ActiveRecord::Base
	acts_as_votable
	Paperclip.options[:command_path] = 'C:\ImageMagick'
	belongs_to :user

	#has_attached_file :image, styles: { medium: "1000x1000>"}
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	#Paperclip.options[:content_type_mappings] = { jpg: "image/jpeg" }
	#validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
