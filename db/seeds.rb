
require 'rest-client'
require 'json'

api_mechanics = {
    "mechanics": [
      {
        "id": "n1GtBt35Rd",
        "name": "Acting"
      },
      {
        "id": "PGjmKGi26h",
        "name": "Action / Movement Programming"
      },
      {
        "id": "oeg6wN9Eoc",
        "name": "Action Point Allowance System"
      },
      {
        "id": "Bc7R8pLoGk",
        "name": "Action Selection"
      },
      {
        "id": "05zCZoLvQJ",
        "name": "Area Control"
      },
      {
        "id": "3te2oybNR4",
        "name": "Area Enclosure"
      },
      {
        "id": "bgGxE0pI2B",
        "name": "Area Movement"
      },
      {
        "id": "amcImLdOmD",
        "name": "Asymmetric"
      },
      {
        "id": "AZxlPpi5oq",
        "name": "Auction"
      },
      {
        "id": "3tuJiW3pps",
        "name": "Betting"
      },
      {
        "id": "ZX3hYcF9H7",
        "name": "Bluffing"
      },
      {
        "id": "UEzHyBWtz8",
        "name": "Building"
      },
      {
        "id": "xuphiSlrxI",
        "name": "Campaign"
      },
      {
        "id": "iWODHwRGuU",
        "name": "Card Drafting"
      },
      {
        "id": "ebJKldFVeS",
        "name": "Card Game"
      },
      {
        "id": "ngCSHHk0H2",
        "name": "Card Placement"
      },
      {
        "id": "Gan96fffLL",
        "name": "Chit-Pull System"
      },
      {
        "id": "K0ykGhTMa8",
        "name": "Comodity Speculation"
      },
      {
        "id": "hwyCo1W0hi",
        "name": "Conversation"
      },
      {
        "id": "33UT4gTFqy",
        "name": "Cooperative"
      },
      {
        "id": "9mNukNBxfZ",
        "name": "Cooperative Play"
      },
      {
        "id": "xVDf5dmJts",
        "name": "Crayon Rail System"
      },
      {
        "id": "kZf6CVjtq7",
        "name": "D6 RPG"
      },
      {
        "id": "vZsDDAdOoe",
        "name": "Deck Building"
      },
      {
        "id": "GsNGxZFNCK",
        "name": "Deduction"
      },
      {
        "id": "5kvyChnWuO",
        "name": "Dexterity"
      },
      {
        "id": "lVSHu9efHv",
        "name": "Dice Building"
      },
      {
        "id": "R0bGq4cAl4",
        "name": "Dice Rolling"
      },
      {
        "id": "wV5peB05xs",
        "name": "Drafting"
      },
      {
        "id": "KfTS5BwIsu",
        "name": "Drawing"
      },
      {
        "id": "Ouo00D4ka7",
        "name": "Drinking"
      },
      {
        "id": "yu3eas6v7A",
        "name": "Engine Building"
      },
      {
        "id": "hUn7uJHrYm",
        "name": "Euro Game"
      },
      {
        "id": "kS8npG0jl8",
        "name": "Fighting"
      },
      {
        "id": "S0O9ucexPS",
        "name": "Flicking"
      },
      {
        "id": "qu5BcGjAzk",
        "name": "Grid Movement"
      },
      {
        "id": "WPytek5P8l",
        "name": "Hand Management"
      },
      {
        "id": "i3xnwJ7VPV",
        "name": "Hand-Eye Coordination"
      },
      {
        "id": "6CyVyXRn1C",
        "name": "Hex and Counter"
      },
      {
        "id": "aQZ40lKv8O",
        "name": "Hidden Movement"
      },
      {
        "id": "Voqy2dgrIM",
        "name": "Hidden Traitor"
      },
      {
        "id": "DwmsVEvNVd",
        "name": "Legacy"
      },
      {
        "id": "MaXzmoZUoX",
        "name": "Line Drawing"
      },
      {
        "id": "UaLql58fua",
        "name": "Live action and Role Playing game (Larp)"
      },
      {
        "id": "ar56ACXDNe",
        "name": "Mancala"
      },
      {
        "id": "r6yIFvyXDD",
        "name": "Memory"
      },
      {
        "id": "U3zhCQH7Et",
        "name": "Modular Board"
      },
      {
        "id": "UHdPUeuqyZ",
        "name": "Paper and Pencil"
      },
      {
        "id": "GNtouC8NLm",
        "name": "Partnerships"
      },
      {
        "id": "3dFd0RwsY4",
        "name": "Party Game"
      },
      {
        "id": "9YdRn9J9oZ",
        "name": "Pattern Building"
      },
      {
        "id": "uZJS07nXF5",
        "name": "Pattern Recognition"
      },
      {
        "id": "BbTMRkwL0b",
        "name": "Pick-up and Deliver"
      },
      {
        "id": "BGrhzIN69D",
        "name": "Player Elimination"
      },
      {
        "id": "YyBg5CzHBF",
        "name": "Player vs. Player"
      },
      {
        "id": "MEAoOygZsA",
        "name": "Point to Point Movement"
      },
      {
        "id": "ea1eaPBQn8",
        "name": "Pool Building"
      },
      {
        "id": "hmipYN1R1I",
        "name": "Press Your Luck"
      },
      {
        "id": "24FWssBC3o",
        "name": "Puzzle"
      },
      {
        "id": "E9VKQ8uMSP",
        "name": "Real Time"
      },
      {
        "id": "Rt6V388y6M",
        "name": "Resource Gathering"
      },
      {
        "id": "j7x8jY4ay2",
        "name": "Rock-Paper-Scissors"
      },
      {
        "id": "EVeAdboGUA",
        "name": "Role Playing"
      },
      {
        "id": "mGBzR68m8Z",
        "name": "Roll / Spin and Move"
      },
      {
        "id": "zIPRS41oiN",
        "name": "Roll and Write"
      },
      {
        "id": "FA6HjbhdNW",
        "name": "Rondel"
      },
      {
        "id": "asw8k7EIJI",
        "name": "Route Building"
      },
      {
        "id": "c6gkRM7rSy",
        "name": "Route/Network Building"
      },
      {
        "id": "RwgEONzIzc",
        "name": "Secret Unit Deployment"
      },
      {
        "id": "lA3KUtVFCy",
        "name": "Set Collection"
      },
      {
        "id": "eRe1jJCBFe",
        "name": "Simulation"
      },
      {
        "id": "DEvPj5twid",
        "name": "Simultaneous Play"
      },
      {
        "id": "za4PP1LH00",
        "name": "Simultaneous action selection"
      },
      {
        "id": "x3wVCq1HEP",
        "name": "Social Deduction"
      },
      {
        "id": "jbLrZb1xIb",
        "name": "Stock Holding"
      },
      {
        "id": "GUoWg3Mfh5",
        "name": "Storytelling"
      },
      {
        "id": "yDlgk7rXno",
        "name": "Tactical Movement"
      },
      {
        "id": "jCRze30VP1",
        "name": "Tactics"
      },
      {
        "id": "T8JEFYwoqy",
        "name": "Take That"
      },
      {
        "id": "9jnCsVuRat",
        "name": "Teams"
      },
      {
        "id": "8PN2HE86wg",
        "name": "Tile Placement"
      },
      {
        "id": "cXd5KaXXZo",
        "name": "Time Track"
      },
      {
        "id": "AVY6EvSQTP",
        "name": "Trading"
      },
      {
        "id": "3GSQl800lk",
        "name": "Trick-taking"
      },
      {
        "id": "zzsE4jtI1b",
        "name": "Variable Phase Order"
      },
      {
        "id": "XM2FYZmBHH",
        "name": "Variable Player Powers"
      },
      {
        "id": "JYYdBW6UCE",
        "name": "Voting"
      },
      {
        "id": "yomuPpKFx4",
        "name": "Wargame"
      },
      {
        "id": "fBOTEBUAmV",
        "name": "Worker Placement"
      }
    ]
  }

api_categories = {
    "categories": [
      {
        "id": "85OKv8p5Ow",
        "name": "4x"
      },
      {
        "id": "hBqZ3Ar4RJ",
        "name": "Abstract"
      },
      {
        "id": "KUBCKBkGxV",
        "name": "Adventure"
      },
      {
        "id": "20iDvpbh7A",
        "name": "Age of Reason"
      },
      {
        "id": "nWDac9tQzt",
        "name": "Alternate History"
      },
      {
        "id": "4mOtRRwSoj",
        "name": "American West"
      },
      {
        "id": "a8NM5cugJX",
        "name": "Ancient"
      },
      {
        "id": "MWoxgHrOJD",
        "name": "Animals"
      },
      {
        "id": "eFaACC6y2c",
        "name": "Apocalyptic"
      },
      {
        "id": "QB4sEpx1Uu",
        "name": "Aviation"
      },
      {
        "id": "PinhJrhnxU",
        "name": "Bluffing"
      },
      {
        "id": "fW5vusE96B",
        "name": "Campaign"
      },
      {
        "id": "eX8uuNlQkQ",
        "name": "Card Game"
      },
      {
        "id": "HKaYVNIxAJ",
        "name": "Children's Game"
      },
      {
        "id": "ODWOjWAJj3",
        "name": "City Building"
      },
      {
        "id": "w8XD66FUZ2",
        "name": "Civil War"
      },
      {
        "id": "329DxyFL9D",
        "name": "Civilization"
      },
      {
        "id": "vXxLT0FDTZ",
        "name": "Collectible Components"
      },
      {
        "id": "G5kfqnPBP6",
        "name": "Comic Book / Strip"
      },
      {
        "id": "iTvYWFmD1c",
        "name": "Conversation"
      },
      {
        "id": "bCBXJy9qDw",
        "name": "Deduction"
      },
      {
        "id": "bKrxqD9mYc",
        "name": "Dexterity"
      },
      {
        "id": "mavSOM8vjH",
        "name": "Dice"
      },
      {
        "id": "We3MM46qBr",
        "name": "Drinking"
      },
      {
        "id": "ZEW7DPFAE6",
        "name": "Dungeons & Dragons"
      },
      {
        "id": "N0TkEGfEsF",
        "name": "Economic"
      },
      {
        "id": "B3NRLMK4xD",
        "name": "Educational"
      },
      {
        "id": "crxgUzJSEz",
        "name": "Electronic"
      },
      {
        "id": "gsekjrPJz0",
        "name": "Environmental"
      },
      {
        "id": "u5ZiYctU6T",
        "name": "Espionage"
      },
      {
        "id": "h8wfZG0j3I",
        "name": "Eurogame"
      },
      {
        "id": "v4SfYtS2Lr",
        "name": "Expansion"
      },
      {
        "id": "yq6hVlbM2R",
        "name": "Exploration"
      },
      {
        "id": "7rV11PKqME",
        "name": "Family Game"
      },
      {
        "id": "ctumBZyj5l",
        "name": "Fan Made"
      },
      {
        "id": "ZTneo8TaIO",
        "name": "Fantasy"
      },
      {
        "id": "Wr8uXcoR9p",
        "name": "Farming"
      },
      {
        "id": "upXZ8vNfNO",
        "name": "Fighting"
      },
      {
        "id": "zNxFBqBHXA",
        "name": "Fishing"
      },
      {
        "id": "3NDxCLUny4",
        "name": "Flicking"
      },
      {
        "id": "YrDuNj8lvr",
        "name": "Food"
      },
      {
        "id": "NR0vgCx5R7",
        "name": "Halloween"
      },
      {
        "id": "cAIkk5aLdQ",
        "name": "Horror"
      },
      {
        "id": "TYnxiuiI3X",
        "name": "Humor"
      },
      {
        "id": "zqFmdU4Fp2",
        "name": "Industry/Manufacturing"
      },
      {
        "id": "rrvd68LjOR",
        "name": "Kickstarter"
      },
      {
        "id": "XeYUw9159M",
        "name": "Legacy"
      },
      {
        "id": "nHZiDOXNla",
        "name": "Luck"
      },
      {
        "id": "pIMmuVYnQp",
        "name": "Mafia"
      },
      {
        "id": "POlqwScVxD",
        "name": "Math"
      },
      {
        "id": "ZhlfIPxYsw",
        "name": "Mature / Adult"
      },
      {
        "id": "c1AnMUJrTF",
        "name": "Mecha"
      },
      {
        "id": "AeWXMxbm91",
        "name": "Medical"
      },
      {
        "id": "QAYkTHK1Dd",
        "name": "Medieval"
      },
      {
        "id": "AujCle9cUq",
        "name": "Memory"
      },
      {
        "id": "FC6ElKI9tk",
        "name": "Miniatures"
      },
      {
        "id": "L6NUwNdblq",
        "name": "Modern Warfare"
      },
      {
        "id": "TJnR5obHsQ",
        "name": "Movie Theme"
      },
      {
        "id": "Sod2YBWMKi",
        "name": "Movies / TV / Radio theme"
      },
      {
        "id": "Kk70K0524Z",
        "name": "Murder/Mystery"
      },
      {
        "id": "MHkqIVxwtx",
        "name": "Mythology"
      },
      {
        "id": "IpcJzp0TVC",
        "name": "Napoleonic"
      },
      {
        "id": "vqZ5XzGWQD",
        "name": "Nautical"
      },
      {
        "id": "jZEDOpx07e",
        "name": "Negotiation"
      },
      {
        "id": "mWb5kHTAg1",
        "name": "Ninja's"
      },
      {
        "id": "dO9HVl2TW7",
        "name": "Novel-based"
      },
      {
        "id": "X8J7RM6dxX",
        "name": "Party Game"
      },
      {
        "id": "9EIayX6n5a",
        "name": "Pirates"
      },
      {
        "id": "TKQncFVX74",
        "name": "Political"
      },
      {
        "id": "8Z7nWG2kOw",
        "name": "Post-Apocalyptic"
      },
      {
        "id": "5APB1MWk6X",
        "name": "Post-Napoleonic"
      },
      {
        "id": "YyszHun1HP",
        "name": "Prehistoric"
      },
      {
        "id": "ov6sEmlkiC",
        "name": "Print & Play"
      },
      {
        "id": "WVMOS3s2pb",
        "name": "Puzzle"
      },
      {
        "id": "2Gu62aKdma",
        "name": "RPG"
      },
      {
        "id": "tQGLgwdbYH",
        "name": "Racing"
      },
      {
        "id": "PzWI2uaif0",
        "name": "Real-time"
      },
      {
        "id": "DRqeVkXWqX",
        "name": "Religious"
      },
      {
        "id": "nuHYRFmMjU",
        "name": "Renaissance"
      },
      {
        "id": "zyj9ZK3mHB",
        "name": "Resource Management"
      },
      {
        "id": "E5rYwP0Ybr",
        "name": "Romance"
      },
      {
        "id": "3B3QpKvXD3",
        "name": "Sci-Fi"
      },
      {
        "id": "c6ei4hkUxm",
        "name": "Socialite"
      },
      {
        "id": "0MdRqhkNpw",
        "name": "Space Exploration"
      },
      {
        "id": "Hc6vcim5DS",
        "name": "Spies/Secret Agents"
      },
      {
        "id": "hShsL2DktG",
        "name": "Sports"
      },
      {
        "id": "O0ogzwLUe8",
        "name": "Strategy"
      },
      {
        "id": "usFW8szGAq",
        "name": "Superhero"
      },
      {
        "id": "yHTeXNjln0",
        "name": "Tech"
      },
      {
        "id": "buDTYyPw4D",
        "name": "Territory Building"
      },
      {
        "id": "vCzpbYT7RU",
        "name": "Theme Park"
      },
      {
        "id": "JwHcKqxh33",
        "name": "Trains"
      },
      {
        "id": "CWYOF9xu7O",
        "name": "Transportation"
      },
      {
        "id": "TR4CiP8Huj",
        "name": "Travel"
      },
      {
        "id": "YGHGDjahKY",
        "name": "Trivia"
      },
      {
        "id": "djokexoK0U",
        "name": "Video Game Theme"
      },
      {
        "id": "ssZjU3HETz",
        "name": "War"
      },
      {
        "id": "jX8asGGR6o",
        "name": "Wargame"
      },
      {
        "id": "EHUBCITA3t",
        "name": "Western"
      },
      {
        "id": "rHvAx4hH2f",
        "name": "Word Game"
      },
      {
        "id": "wTLJSVEbm6",
        "name": "World War I"
      },
      {
        "id": "fl3TogdUzX",
        "name": "World War II"
      },
      {
        "id": "OlkGBmu4Va",
        "name": "World War III"
      },
      {
        "id": "FmGV9rVu1c",
        "name": "Zombies"
      }
    ]
  }


category_dictionary = api_categories[:categories]
mechanic_dictionary = api_mechanics[:mechanics]
url = 'https://www.boardgameatlas.com/api/search?order_by=popularity&ascending=false&pretty=true&client_id=SB1VGnDv7M'
response = RestClient.get(url)
data = JSON.parse(response)

data["games"].each do | boardgame |

    mechanics = boardgame["mechanics"]
    mechanics_arr = mechanics.map do |mechanic|
        mechanic.values
    end.flatten

    mechanic_name = mechanics_arr.map do |game_mechanic|

        found = mechanic_dictionary.select do |mechanic|
            mechanic[:id] == game_mechanic
        end[0]
        found[:name]
    end

    categories = boardgame["categories"]
    categories_arr = categories.map do |category|
        category.values
    end.flatten

    category_name = categories_arr.map do |game_category|

        found = category_dictionary.select do |category|
            category[:id] == game_category
        end[0]
        found[:name]
    end

    Boardgame.create(name: boardgame["name"], image: boardgame["image_url"], description: boardgame["description"], price: boardgame["price"], user_rating: boardgame["average_user_rating"], mechanics: mechanic_name, category: category_name )
end

User.create(username: 'joel', password: '1234')
User.create(username: 'john', password: '1234')










