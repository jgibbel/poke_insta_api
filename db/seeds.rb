require 'JSON'

# Pokemon.destroy_all
# Pokemon.reset_pk_sequence

# Follow.destroy_all
# Follow.reset_pk_sequence

# Post.destroy_all
# Post.reset_pk_sequence

# Like.destroy_all
# Like.reset_pk_sequence

$parsedArr = []
$post_pics = []
$jokeArr = []

# Function Definitions-------------------------------------------------------------------
def fetchAPI(url)
    raw = RestClient.get(url)
    parsedRaw = JSON.parse(raw)
    newArr = parsedRaw["cards"]
    $parsedArr << newArr
end

def addToPostPics(arr)
    arr.each do |card|
        $post_pics << card["imageUrlHiRes"]
    end
end

def addJoke(num)
    i = 0
    until i == num do 
        joke = RestClient.get('https://api.chucknorris.io/jokes/random')
        parsedJoke = JSON.parse(joke)
        randomJoke = parsedJoke["value"]
        $jokeArr << randomJoke
        i += 1
    end
end

# Array Assignments-------------------------------------------------------------------------
pokemonArr = [[1,"Bulbasaur","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/001.png"],[2,"Ivysaur","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/002.png"],[3,"Venusaur","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/003.png"],[4,"Charmander","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/004.png"],[5,"Charmeleon","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/005.png"],[6,"Charizard","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/006.png"],[7,"Squirtle","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/007.png"],[8,"Wartortle","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/008.png"],[9,"Blastoise","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/009.png"],[10,"Caterpie","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/010.png"],[11,"Metapod","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/011.png"],[12,"Butterfree","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/012.png"],[13,"Weedle","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/013.png"],[14,"Kakuna","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/014.png"],[15,"Beedrill","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/015.png"],[16,"Pidgey","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/016.png"],[17,"Pidgeotto","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/017.png"],[18,"Pidgeot","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/018.png"],[19,"Rattata","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/019.png"],[20,"Raticate","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/020.png"],[21,"Spearow","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/021.png"],[22,"Fearow","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/022.png"],[23,"Ekans","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/023.png"],[24,"Arbok","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/024.png"],[25,"Pikachu","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/025.png"],[26,"Raichu","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/026.png"],[27,"Sandshrew","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/027.png"],[28,"Sandslash","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/028.png"],[29,"Nidoran♀","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/029.png"],[30,"Nidorina","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/030.png"],[31,"Nidoqueen","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/031.png"],[32,"Nidoran♂","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/032.png"],[33,"Nidorino","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/033.png"],[34,"Nidoking","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/034.png"],[35,"Clefairy","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/035.png"],[36,"Clefable","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/036.png"],[37,"Vulpix","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/037.png"],[38,"Ninetales","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/038.png"],[39,"Jigglypuff","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/039.png"],[40,"Wigglytuff","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/040.png"],[41,"Zubat","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/041.png"],[42,"Golbat","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/042.png"],[43,"Oddish","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/043.png"],[44,"Gloom","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/044.png"],[45,"Vileplume","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/045.png"],[46,"Paras","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/046.png"],[47,"Parasect","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/047.png"],[48,"Venonat","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/048.png"],[49,"Venomoth","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/049.png"],[50,"Diglett","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/050.png"],[51,"Dugtrio","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/051.png"],[52,"Meowth","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/052.png"],[53,"Persian","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/053.png"],[54,"Psyduck","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/054.png"],[55,"Golduck","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/055.png"],[56,"Mankey","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/056.png"],[57,"Primeape","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/057.png"],[58,"Growlithe","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/058.png"],[59,"Arcanine","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/059.png"],[60,"Poliwag","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/060.png"],[61,"Poliwhirl","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/061.png"],[62,"Poliwrath","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/062.png"],[63,"Abra","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/063.png"],[64,"Kadabra","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/064.png"],[65,"Alakazam","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/065.png"],[66,"Machop","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/066.png"],[67,"Machoke","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/067.png"],[68,"Machamp","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/068.png"],[69,"Bellsprout","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/069.png"],[70,"Weepinbell","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/070.png"],[71,"Victreebel","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/071.png"],[72,"Tentacool","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/072.png"],[73,"Tentacruel","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/073.png"],[74,"Geodude","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/074.png"],[75,"Graveler","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/075.png"],[76,"Golem","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/076.png"],[77,"Ponyta","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/077.png"],[78,"Rapidash","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/078.png"],[79,"Slowpoke","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/079.png"],[80,"Slowbro","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/080.png"],[81,"Magnemite","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/081.png"],[82,"Magneton","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/082.png"],[83,"Farfetch'd","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/083.png"],[84,"Doduo","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/084.png"],[85,"Dodrio","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/085.png"],[86,"Seel","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/086.png"],[87,"Dewgong","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/087.png"],[88,"Grimer","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/088.png"],[89,"Muk","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/089.png"],[90,"Shellder","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/090.png"],[91,"Cloyster","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/091.png"],[92,"Gastly","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/092.png"],[93,"Haunter","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/093.png"],[94,"Gengar","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/094.png"],[95,"Onix","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/095.png"],[96,"Drowzee","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/096.png"],[97,"Hypno","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/097.png"],[98,"Krabby","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/098.png"],[99,"Kingler","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/099.png"],[100,"Voltorb","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/100.png"],[101,"Electrode","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/101.png"],[102,"Exeggcute","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/102.png"],[103,"Exeggutor","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/103.png"],[104,"Cubone","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/104.png"],[105,"Marowak","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/105.png"],[106,"Hitmonlee","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/106.png"],[107,"Hitmonchan","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/107.png"],[108,"Lickitung","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/108.png"],[109,"Koffing","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/109.png"],[110,"Weezing","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/110.png"],[111,"Rhyhorn","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/111.png"],[112,"Rhydon","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/112.png"],[113,"Chansey","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/113.png"],[114,"Tangela","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/114.png"],[115,"Kangaskhan","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/115.png"],[116,"Horsea","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/116.png"],[117,"Seadra","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/117.png"],[118,"Goldeen","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/118.png"],[119,"Seaking","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/119.png"],[120,"Staryu","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/120.png"],[121,"Starmie","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/121.png"],[122,"Mr. Mime","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/122.png"],[123,"Scyther","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/123.png"],[124,"Jynx","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/124.png"],[125,"Electabuzz","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/125.png"],[126,"Magmar","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/126.png"],[127,"Pinsir","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/127.png"],[128,"Tauros","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/128.png"],[129,"Magikarp","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/129.png"],[130,"Gyarados","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/130.png"],[131,"Lapras","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/131.png"],[132,"Ditto","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/132.png"],[133,"Eevee","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/133.png"],[134,"Vaporeon","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/134.png"],[135,"Jolteon","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/135.png"],[136,"Flareon","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/136.png"],[137,"Porygon","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/137.png"],[138,"Omanyte","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/138.png"],[139,"Omastar","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/139.png"],[140,"Kabuto","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/140.png"],[141,"Kabutops","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/141.png"],[142,"Aerodactyl","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/142.png"],[143,"Snorlax","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/143.png"],[144,"Articuno","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/144.png"],[145,"Zapdos","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/145.png"],[146,"Moltres","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/146.png"],[147,"Dratini","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/147.png"],[148,"Dragonair","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/148.png"],[149,"Dragonite","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/149.png"],[150,"Mewtwo","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/150.png"],[151,"Mew","https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/151.png"]]

URLs = ['https://api.pokemontcg.io/v1/cards?setCode=det1', 'https://api.pokemontcg.io/v1/cards?setCode=sma', 'https://api.pokemontcg.io/v1/cards?setCode=sm6', 'https://api.pokemontcg.io/v1/cards?setCode=sm35', 'https://api.pokemontcg.io/v1/cards?setCode=bw10', 'https://api.pokemontcg.io/v1/cards?setCode=sm11', 'https://api.pokemontcg.io/v1/cards?setCode=sm10', 'https://api.pokemontcg.io/v1/cards?setCode=sm75', 'https://api.pokemontcg.io/v1/cards?setCode=sm7', 'https://api.pokemontcg.io/v1/cards?setCode=sm5', 'https://api.pokemontcg.io/v1/cards?setCode=sm4', 'https://api.pokemontcg.io/v1/cards?setCode=sm3', 'https://api.pokemontcg.io/v1/cards?setCode=sm1', 'https://api.pokemontcg.io/v1/cards?setCode=g1', 'https://api.pokemontcg.io/v1/cards?setCode=xy7', 'https://api.pokemontcg.io/v1/cards?setCode=xy6', 'https://api.pokemontcg.io/v1/cards?setCode=xy9', 'https://api.pokemontcg.io/v1/cards?setCode=xy5', 'https://api.pokemontcg.io/v1/cards?setCode=xy5', 'https://api.pokemontcg.io/v1/cards?setCode=bw11']

# Creating arrays of images and Jokes--------------------------------------------------------
# URLs.each do |url|
#     fetchAPI(url)
# end

# $parsedArr.each do |arr|
#     addToPostPics(arr)
# end

# addJoke(1500)

# Creating Pokemon instances-------------------------------------------------------------------

# pokemonArr.each do  |pokemon|
#     id = pokemon[0]
#     name = pokemon[1]
#     image = pokemon[2]
#     string = ""
#     if id.to_s.length == 1 
#         string = "00" + id.to_s 
#     elsif id.to_s.length == 2 
#         string = "0" + id.to_s
#     else 
#         string = id.to_s
#     end
#     Pokemon.create(species: name, dataId: string, image: image)
# end

# Below is the initial written code for above that I will be deleting since I've already refactored

# detectivePikachuSet = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=det1')
# parsedDPS = JSON.parse(detectivePikachuSet)
# DPS_arr = parsedDPS["cards"]
# parsedArr << DPS_arr

# shinyVault = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sma')
# parsedShinyVault = JSON.parse(shinyVault)
# SV_arr = parsedDPS["cards"]
# parsedArr << SV_arr

# forbiddenLight = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm6')
# parsedForbiddenLight = JSON.parse(forbiddenLight)
# FL_arr = parsedForbiddenLight["cards"]
# parsedArr << FL_arr

# shiningLegends = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm35')
# parsedShiningLegends = JSON.parse(shiningLegends)
# SL_arr = parsedForbiddenLight["cards"]
# parsedArr << SL_arr

# plasmaBlast = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=bw10')
# parsedPB = JSON.parse(plasmaBlast)
# PB_arr = parsedPB["cards"]
# parsedArr << PB_arr

# unifiedMinds = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm11')
# parsedUM = JSON.parse(unifiedMinds)
# UM_arr = parsedUM["cards"]
# parsedArr << UM_arr

# unbrokenBonds = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm10')
# parsedUB = JSON.parse(unbrokenBonds)
# UB_arr = parsedUB["cards"]
# parsedArr << UB_arr

# dragonMajesty = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm75')
# parsedDM = JSON.parse(dragonMajesty)
# DM_arr = parsedDM["cards"]
# parsedArr << DM_arr

# celestialStorm = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm7')
# parsedCS = JSON.parse(celestialStorm)
# CS_arr = parsedCS["cards"]
# parsedArr << CS_arr

# ultraPrism = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm5')
# parsedUP = JSON.parse(ultraPrism)
# UP_arr = parsedUP["cards"]
# parsedArr << UP_arr

# crimsonInvasion = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm4')
# parsedCI = JSON.parse(crimsonInvasion)
# CI_arr = parsedCI["cards"]
# parsedArr << CI_arr

# burningShadows = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm3')
# parsedBS = JSON.parse(burningShadows)
# BS_arr = parsedBS["cards"]
# parsedArr << BS_arr

# sunNmoon = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=sm1')
# parsedSM = JSON.parse(sunNmoon)
# SM_arr = parsedSM["cards"]
# parsedArr << SM_arr

# generations = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=g1')
# parsedG = JSON.parse(generations)
# G_arr = parsedG["cards"]
# parsedArr << G_arr

# ancientOrigins = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=xy7')
# parsedAO = JSON.parse(ancientOrigins)
# AO_arr = parsedAO["cards"]
# parsedArr << AO_arr

# roaringSkies = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=xy6')
# parsedRS = JSON.parse(roaringSkies)
# RS_arr = parsedRS["cards"]
# parsedArr << RS_arr

# breakPoint = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=xy9')
# parsedBP = JSON.parse(breakPoint)
# BP_arr = parsedBP["cards"]
# parsedArr << BP_arr

# primalClash = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=xy5')
# parsedPC = JSON.parse(primalClash)
# PC_arr = parsedPC["cards"]
# parsedArr << PC_arr

# legendaryTreasures = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=bw11')
# parsedLT = JSON.parse(legendaryTreasures)
# LT_arr = parsedLT["cards"]
# parsedArr << LT_arr

# addToPostPics(DPS_arr)
# addToPostPics(SV_arr)
# addToPostPics(FL_arr)
# addToPostPics(SL_arr)
# addToPostPics(PB_arr)
# addToPostPics(UM_arr)
# addToPostPics(UB_arr)
# addToPostPics(DM_arr)
# addToPostPics(CS_arr)
# addToPostPics(UP_arr)
# addToPostPics(CI_arr)
# addToPostPics(BS_arr)
# addToPostPics(SM_arr)
# addToPostPics(G_arr)
# addToPostPics(AO_arr)
# addToPostPics(RS_arr)
# addToPostPics(BP_arr)
# addToPostPics(PC_arr)
# addToPostPics(LT_arr)

# Parsing JSON files to generate Posts
#--------------------------------------------------------------------------------------------------

imgFile = File.read('pokeImages.json')
captionFile = File.read('pokeCaptions.json')
imgArr = JSON.parse(imgFile)
capArr = JSON.parse(captionFile)

z = 0
capArr.each do |caption|
    image = imgArr[z]
    pokemon_id = rand(152)
    Post.create(image: image, caption: caption, pokemon_id: pokemon_id)
    z +=1
end

# Generate follows -----------------------------------


151.times do |y|
    15.times do |t|
        num1 = rand(152)
        Follow.create(pokemon_id: y, following_id: num1)
    end 
end 

# Generate likes --------------------------------------

800.times do |x|
    pokeId = rand(152)
    post = rand(1501) 
    # because I made one post per cpation and there were 1500 captions
    Like.create(pokemon_id: pokeId, post_id: post)
end 
