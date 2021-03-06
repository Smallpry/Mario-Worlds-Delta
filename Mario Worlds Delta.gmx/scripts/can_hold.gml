///can_hold()

/*
**  Usage:
**      can_hold()
**
**  Returns:
**      Whether or not the player is able to hold an item.
*/

if (input_check(input.action1))
&& (instance_exists(obj_playerparent))
&& (!instance_exists(obj_cape_fly))
&& (global.mount == 0)
&& (obj_playerparent.holding = 0)
&& (obj_playerparent.sliding = 0)
&& (obj_playerparent.control_enable = true)
    return true;
else
    return false;
