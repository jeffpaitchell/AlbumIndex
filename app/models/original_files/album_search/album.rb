class Album < ApplicationRecord
	belongs_to :user
	belongs_to :genre

	def self.search(search)
		if search
			where('title || artist || song1 || song2 || song3
			|| song4 || song5 || song6 || song7 || song8 
			|| song9 || song10 
				LIKE ?', "%#{search}%")
		else
		  where(nil)
		end
	end	

	has_attached_file :album_img, styles: { album_index: "250x350>", album_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :album_img, content_type: /\Aimage\/.*\z/

end
