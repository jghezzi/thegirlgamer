class Game < ApplicationRecord

	has_one :howtoplaygame
	has_attached_file :avatar, styles: {medium: "850x350#"}, default_url: "http://placehold.it/850x350"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
