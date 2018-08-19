def get_first_name_of_season_winner(data, season)

  data[season].each do |bachelorette|
    if bachelorette["status"] == "Winner"
      return bachelorette["name"].split[0]
    end
  end

end

def get_contestant_name(data, occupation)

  data.each do |season, bachelorettes|
    bachelorettes.each do |bachelorette|
      if bachelorette["occupation"] == occupation
        return bachelorette["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)

  i = 0

  data.each do |season, bachelorettes|
    bachelorettes.each do |bachelorette|
      if bachelorette["hometown"] == hometown
        i += 1
      end
    end
  end

  i
end

def get_occupation(data, hometown)

  data.each do |season, bachelorettes|
    bachelorettes.each do |bachelorette|
      if bachelorette["hometown"] == hometown
        return bachelorette["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)

  age_sum = 0
  how_many_contestants = 0

  data[season].each do |bachelorette|
    age_sum += bachelorette["age"].to_f
    how_many_contestants += 1
  end

  (age_sum/how_many_contestants).round
end
