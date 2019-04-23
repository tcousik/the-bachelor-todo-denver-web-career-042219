require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
    if info["status"] == "Winner"
       return info["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |player|
      if player["occupation"] == occupation
        return player["name"]
      end
    end
  end
end  
  
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    info.each do |player|
      if player["hometown"] == hometown
        counter += 1 
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |player|
    if player["hometown"] == hometown
      return player["occupation"]
      break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  array = []
  data[season].each do |season|
      array << season["age"].to_i
  end
  (array.inject {|sum, x| sum + x }.to_f / array.size).round
end
