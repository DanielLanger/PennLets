class Listing < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :bathrooms, :featured, :furnished, :price, :total_rooms, :photo, :term, :utilities, 
  :negotiable, :description, :air_conditioning, :parking, :washer_dryer, :private_bathroom, :available_rooms
  serialize :term
  has_attached_file :photo, :styles =>{ :small => "150x150>", :medium =>"300x300"},
	:default_url => '/assets/noPhoto.jpg',
  	:storage => :s3,
  	:s3_credentials => "#{Rails.root}/config/s3.yml",
  	:path => "/:style/:id/:filename",
  	:bucket => 'PennLets'
  
  validates :address, :presence => true
  validates :bathrooms, :presence => true
  validates :available_rooms, :presence => true
  validates :total_rooms, :presence => true
  validates :price, :presence => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :term, :presence => true
  
end
