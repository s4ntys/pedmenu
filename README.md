### Simple Ped Menu
- A lightweight script for ESX or QBCore frameworks that allows players to change their character model to a predefined ped using the - - /ped command. The ped is assigned based on the player's license, as specified in the configuration file.

### Features

Supports both ESX and QBCore frameworks.
Assigns specific ped models to players based on their license.
Simple /ped command to spawn the configured ped.
Easy-to-configure ped list with license-based permissions.

### Installation

Download the script from the repository.
Extract the files and place the simple-ped-menu folder into your server's resources directory.
Configure the script by editing the config.lua file (see Configuration section below).
Add the resource to your server by adding ensure simple-ped-menu to your server.cfg.
Restart your server or use refresh followed by start simple-ped-menu.

### Configuration


- The config.lua file allows you to set the framework and define permitted peds for specific player licenses.
Example Config
```Config = {}

-- Framework Select ('esx' or 'qbcore')
Config.Framework = 'esx' -- Change to 'qbcore' if you want to use QBCore

-- List of permitted peds by licence
Config.AllowedPeds = {
    ['license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'] = 'a_c_husky', -- Pes
    ['license:yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'] = 'a_c_cat_01' -- Mačka
}
```


### Config Options

- Config.Framework: Set to 'esx' or 'qbcore' depending on your server's framework.
- Config.AllowedPeds: A table mapping player licenses to ped model names.
Key: The player's license (e.g., license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx).
Value: The ped model name (e.g., a_c_husky, a_c_cat_01). Use valid ped model names from the game.



### Usage

- Ensure the player's license is added to the Config.AllowedPeds table with a valid ped model.
In-game, use the /ped command to spawn the ped assigned to your license.
The script will replace the player's model with the specified ped while maintaining gameplay functionality.

- Example
If a player with the license license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx uses /ped, their model will change to a_c_husky (a husky dog).
Notes

- Ensure the ped models specified in Config.AllowedPeds are valid and exist in the game.
Only players with a matching license in the config can use the /ped command successfully.
Developers should verify licenses and ped models to avoid errors.
For a list of valid ped models, refer to the GTA V ped model list.

### Support
If you encounter issues or have questions, please contact the developer or open an issue on the repository.
License
This script is licensed under MIT License. Feel free to modify and distribute as needed.
