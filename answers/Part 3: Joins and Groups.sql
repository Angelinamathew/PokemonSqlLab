--1. What is each pokemon's primary type?
SELECT name primary_type FROM Pokemons;

--2. What is Rufflet's secondary type?
SELECT types.names
FROM types
JOIN pokemons ON pokemons.secondary_type = types.id
WHERE pokemons.name = "Rufflet";

--3. What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name
FROM pokemons
JOIN pokemon_trainer on pokemons.id = pokemon_trainer.pokemon_id
WHERE pokemon_trainer.trainerID = 303;

--4. How many pokemon have a secondary type Poison?
SELECT pokemons.name
FROM pokemons
JOIN types on types.id = pokemons.secondary_type
WHERE types.name = "Poison";

--5. What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(pokemons.name)
 FROM pokemons
 JOIN types ON types.id = pokemons.primary_type
 GROUP BY types.name;

--6. How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
SELECT trainers.trainerID, COUNT(*)
FROM pokemon_trainer
WHERE pokemons_trainer = 100;
GROUP BY trainerID;

--7. How many pokemon only belong to one trainer and no other?
SELECT pokemon_id, count(*)
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING count(trainerID) = 1;