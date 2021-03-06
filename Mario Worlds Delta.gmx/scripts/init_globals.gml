///init_globals();

/*
**  Name:
**      init_globals();
**
**  Function:
**      Initializes the global variables needed for the game.
*/

//Initialize Colour Swap shader.
global.Pal_Shader = shd_palette_swapper;
pal_swap_init_system(global.Pal_Shader);

//Item Enumerators
enum itemtype {

    coin,
    coin_star,
    coin_multi,
    coin_multi_shroom,
    mushroom,
    fireflower,
    fireflower_plus,
    feather,
    feather_plus,
    star,
    lifeup,
    poison,
    watermelon_fire,
    watermelon_bomb,
    pswitch,
    gswitch,
    trampoline,
    powblock,
    detonator,
    key,
    yoshi_g,
    yoshi_r,
    yoshi_y,
    yoshi_b,
    beanstalk
}

//Input Enumerators
enum input {

    up,
    down,
    left,
    right,
    action0,
    action1,
    action2,
    select,
    start
}

//Remember music from rooms
global.levelmusic = bgm_gameover;

//Stream being played in room
global.stream = noone;

//Current Player
//0: Mario
//1: Luigi
//2: Toad
global.player = 0;

//Time Limit
global.time = 0;

//Coin amount
global.coins = 0;

//Silver coin amount
global.scoins = 0;

//Star amount
global.bonus = 0;
global.bonusadd = 0;
global.bonusgame = 0;

//Lives
lives = 5;

//Score
score = 0;

//Powerup
global.powerup = cs_pow_small;

//Whether a level is cleared.
//1: Normal stage clear
//2: Secret stage clear
global.clear = 0;

//Target Room
global.targetroom = noone;

//Start
global.mariostart = 0;

//Checkpoint
global.checkpoint = noone;

//Checkpoint Room
global.checkpointroom = noone;

//Position change object type
global.postchange = -1;

//Exit direction for warp
global.exit_dir = 0;

//ID of the exit warp
global.exit_id = -1;

//Is the player riding a yoshi?
global.mount = 0;
global.mountcolour = 0;

//Item in reserve
global.reserveitem = 0;

//Whether the PSwitch effect was set in a room
global.pswitch = 0;

//Whether the Starman effect was set in a room
global.starman = 0;

//Item that is carried between rooms.
global.carrieditem = noone;

//Sprite of the item that is carried between rooms.
global.carriedsprite = noone;

//Handle the activation / deactivation of on/off blocks
global.onoff_block = 0;

//Handle the state of the colour switches
global.palaceswitch_y = 0;
global.palaceswitch_g = 0;
global.palaceswitch_r = 0;
global.palaceswitch_b = 0;

//Handle the data structure of the doors
global.doors = ds_map_create();

//Handle the data structure of the 3up moons.
global.moons = ds_map_create();

//Handle the data structure of the ace coins.
global.dcoins = ds_map_create();

//Handle the data structure of the levels completed on the map and allows exit from them
global.beaten = 0;
global.worldmap_beaten = ds_map_create();

//Handle the data structure of the world map.
global.worldmap = ds_map_create();
