# Variable declarations


def randomize(numPar, arr)
  countries = ["United States", "Canada", "Russia", "Korea"]
  parArr = Array.new(numPar)

  arr.each do |par|
    loop do
      temp = rand(numPar)
      if parArr[temp] == nil
        parArr[temp] = par
        break
      end
    end
  end

  puts "Randomized Array: "
  country = 0
  parArr.each do |par|
    puts "\t" + par.to_s + " representing: " + countries[country]
    country = country + 1
    if country > 3
      country = 0
    end
  end



end

#### main ####
puts("Please input number of participants:")
numPar = gets.chomp
puts "Number of participants: " + numPar
arr = Array.new(Integer(numPar))
for i in 0..numPar.to_i - 1 do
  puts "Enter participant " + (i + 1).to_s + "s name:"
  temp = gets.chomp
  arr[i] = temp
  puts "You have " + (numPar.to_i - (i+1)).to_s + " participants left to enter"
end

puts "Current participants: "
arr.each do |par|
  puts "\t " + par
end

loop do
  randomize(numPar.to_i, arr)
  puts "Are these teams ok? (y/n): "
  answer = gets.chomp
  if answer == "y"
    break
  else
    puts "Randomizing teams again..."
  end
end
