require 'rest-client'
require 'json'


url = 'https://www.boardgameatlas.com/api/search?order_by=popularity&ascending=false&pretty=true&client_id=SB1VGnDv7M'
response = RestClient.get(url)
data = JSON.parse(response)
first = data["games"][0]

mechanics = first["mechanics"]
# one game mechanics
# mechanics_arr = ["PGjmKGi26h", "05zCZoLvQJ", "33UT4gTFqy", "WPytek5P8l", "U3zhCQH7Et", "lA3KUtVFCy", "DEvPj5twid", "XM2FYZmBHH"] 

mechanics_arr = mechanics.map do |mechanic|
    mechanic.values
end.flatten

# map over mechanics arr and replace it after selecting from mechanics dictionary 


mechanics = {"mechanics"=> [{"id": "PGjmKGi26h", "name": "Action / Movement Programming"}, {"id": "05zCZoLvQJ", "name": "Area Control"}, {"id": "33UT4gTFqy", "name": "Cooperative"}, {"id": "WPytek5P8l", "name": "Hand Management"}, {"id": "U3zhCQH7Et", "name": "Modular Board"}, {"id": "lA3KUtVFCy", "name": "Set Collection"}, {"id": "DEvPj5twid", "name": "Simultaneous Play"},{"id": "XM2FYZmBHH","name": "Variable Player Powers"}]}
mechanic_dictionary = mechanics["mechanics"]
mechanics_arr.map do |game_mechanic|
    found = mechanic_dictionary.select do |mechanic|
        mechanic[:id] == game_mechanic
    end[0]
    found[:name]
end




