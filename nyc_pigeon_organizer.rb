def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list={}
 data.each do |prop, attribute|
    attribute.each do |attribute, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon]={}
        end
      end
     end

  pigeon_list.each do |pigeon, properties|
    data.each do |prop, attribute|
      pigeon_list[pigeon][prop]=[]
    end
  end

  data.each do |key, first_tier_value|
    first_tier_value.each do |second_tier_key, pigeon_array|
      pigeon_list.each_key do |pigeon|
        if pigeon_array.include?(pigeon)
          pigeon_list[pigeon][key].push(second_tier_key.to_s)
        end
      end
    end
  end

  pigeon_list
end
