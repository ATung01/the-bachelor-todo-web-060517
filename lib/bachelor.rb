require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |stats, value|
      if value == "Winner"
        full_name = people["name"]
        return full_name.split(" ").first
      end
    end
  end
  # code here
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
    people.each do |person|
      person.each do |stats, values|
        if values == occupation
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  # code here
  data.each do |season, people|
    people.each do |person|
      person.each do |stats, values|
        if values == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
    people.each do |person|
      person.each do |stats, values|
        if values == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  counter = 0
  data[season].each do |people|
    people.each do |stats, value|
      if stats == "age"
        total_age += value.to_f
        counter += 1
      end
    end
  end
  result = total_age/counter
  result.round
  # code here
end
