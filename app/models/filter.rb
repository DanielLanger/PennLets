class Filter < ActiveRecord::Base

  attr_accessible :air_conditioning, :available_rooms, :bathrooms, :furnished, :negotiable, :new, :parking, :maximum_price, :private_bathroom, :show, :term, :total_rooms, :utilities, :washer_dryer
  serialize :term
  
  def listings(toFilter)
  	@listings ||=find_listings(toFilter)
  end
  
private
  
  def find_listings(toFilter)
  	listings=Listing.order(:price)
  	if(toFilter.fetch("price")=="true")
  		print("in now")
  		listings=listings.where("listings.price <= ?", maximum_price) 
  	end
  	if(toFilter.fetch("rooms")=="true")
  		listings=listings.where(total_rooms: total_rooms)
  	end
  	if(toFilter.fetch("available")=="true")
  		listings=listings.where(available_rooms: available_rooms)
  	end
  	if(toFilter.fetch("bathrooms")=="true")
  		listings=listings.where(bathrooms: bathrooms)
  	end
=begin
  	if(toFilter.fetch("term")=="true")
  		listings.each do |l|
  			l.term.each do |t|
  				if(term.include?(t))
  					listings.delete(l)
  				end
  			end
  		end		
  	end
=end
  	if(toFilter.fetch("furnished")=="true")
  		listings=listings.where(furnished: furnished)
  	end
  	if(toFilter.fetch("negotiable")=="true")
  		listings=listings.where(negotiable: negotiable)
  	end
  	if(toFilter.fetch("utilities")=="true")
  		listings=listings.where(utilities: utilities)
  	end
  	if(toFilter.fetch("air_conditioning")=="true")
  		listings=listings.where(air_conditioning: air_conditioning)
  	end
  	if(toFilter.fetch("parking")=="true")
  		listings=listings.where(parking: parking)
  	end
  	if(toFilter.fetch("washer_dryer")=="true")
  	listings=listings.where(washer_dryer: washer_dryer)
  	end
  	if(toFilter.fetch("private")=="true")
  		listings=listings.where(private_bathroom: private_bathroom)
  	end
  	listings
  end
  
end
