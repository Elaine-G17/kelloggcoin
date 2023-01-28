# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
ben_wallet = 0
brian_wallet = 0
evan_wallet= 0
anthony_wallet= 0

for transaction in blockchain
if transaction["to_user"] == "ben"
  ben_wallet = ben_wallet ++ transaction["amount"]
elsif transaction["to_user"] == "brian"
  brian_wallet = brian_wallet ++ transaction["amount"]
elsif transaction["to_user"] == "evan"
  evan_wallet = evan_wallet ++ transaction["amount"]
elsif transaction["to_user"] == "anthony"
  anthony_wallet = anthony_wallet ++ transaction["amount"]
end

if transaction["from_user"] == "ben"
  ben_wallet = ben_wallet - transaction["amount"]
elsif transaction["from_user"] == "brian"
  brian_wallet = brian_wallet -- transaction["amount"]
elsif transaction["from_user"] == "evan"
  evans_wallet = evan_wallet -- transaction["amount"]
elsif transaction["from_user"] == "anthony"
  anthony_wallet = anthony_wallet -- transaction["amount"]
end
end

puts "Ben's KelloggCoin balance is #{ben_wallet}."
puts "Brian's KelloggCoin balance is #{brian_wallet}."
puts "Evan's KelloggCoin balance is #{evan_wallet}."
puts "Anthony's KelloggCoin balance is #{anthony_wallet}."


# user_name = ["ben", "brian", "evan", "anthony"]
# user_balance= [ben_wallet, brian_wallet, evan_wallet, anthony_wallet]

# index=0

# loop do
  # if index == user_name.size
    # break
  # end

# name = user_name[index]
# balance = user_balance[index]
# wallet="#{name}'s KelloggCoin balance is #{balance}"