
// SPDX-License-Identifier: MIT
pragma solidity >=0.0.7 <= 0.9.0;

contract PokemonFactory{
    struct Pokemon{
        uint8 id;
        string name;

    }
    Pokemon [] private pokemons;
    mapping (uint8 => address) public pokemonToOwner;
    mapping (address => uint8) public ownerPokemonCount;
    function createPokemon (string memory _name, uint8 _id) public {
        pokemons.push(Pokemon(_id,_name));
        pokemonToOwner[_id] = msg.sender;
        ownerPokemonCount[msg.sender]++;
    }

    function getAllPokemons() public view returns (Pokemon[] memory){
        return pokemons;
        }
}