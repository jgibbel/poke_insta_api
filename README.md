# README

Pokemon Instagram API serves as the backend to Pokemon Instagram (https://github.com/jgibbel/poke_insta_frontend). 

The models used in this project are Pokemon, Follows, Likes, and Posts. Pokemon have a species, avatar image, and their Pokedex number. Posts have a caption, Pokemon, and image. Likes is a simple joiner model between a Pokemon and a Post. Follows is a more interesting model. It joins two separate instances of Pokemon, so its model defines custom attributes for the Pokemon who is following and the Pokemon who is being followed. In the follow.rb model file the relationship looks like this: 

belongs_to :follower, foreign_key: "pokemon_id", class_name: "Pokemon"
belongs_to :following, foreign_key: "following_id", class_name: "Pokemon"

We made use of serializers to pass our data as JSON to the frontend more efficiently. When we fetch the show page of a specific pokemon the JSON returned contains the information on that pokemon, all of that pokemon's posts (which include the number of likes each post has), all of the pokemon that  are followed by this pokemon, all of those pokemons' posts, including the like count for those posts. This means that with a single fetch to a Pokemon's show page we can receive all of the information necessary to render the entire app for that Pokemon. Without serializers we probably would have been making tens of GET fetches as opposed to just one. 
