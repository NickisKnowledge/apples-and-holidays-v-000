require 'pry'

=begin

  holiday_hash = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

=end


def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
 holiday_hash.each do |key|
		  if key.first == 'winter'.to_sym
		      holiday_hash[key.first].each do | k, v|
		        v << supply
			end
    end 
  end
  holiday_hash

end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << "#{supply}"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  #contacts["Jon Snow"][:favorite_ice_cream_flavors] << "mint chip"

  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
  puts "#{season.to_s.capitalize!}:"
    holiday.each do |key, supplies|
      h = key.to_s
      cap_holidays =  h.split("_").map {|word| word.capitalize!}.join(" ")
      puts "  " + cap_holidays + ": #{supplies.join(", ")}"
    end
  end  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

	bbq_holidays = []
	holiday_hash.each do |season, holiday|
  	holiday.map do |key, supplies|
    	if supplies.include? "BBQ"
      	bbq_holidays << key
       end
    end
  end
  bbq_holidays 
    
end


