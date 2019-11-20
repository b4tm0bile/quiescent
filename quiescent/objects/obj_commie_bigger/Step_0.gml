//regular movement
if keyboard_check(ord("W"))
{
	y = y - 1;
	image_angle = 0;
	object_set_sprite(obj_commie, spr_unarmed);
}
if keyboard_check(ord("A"))
{
   image_angle = 90;
   x = x - 1;
   object_set_sprite(obj_commie, spr_unarmed);

}
if keyboard_check(ord("S"))
{
	y = y + 1;
	image_angle = 180;
	object_set_sprite(obj_commie, spr_unarmed);
}
if keyboard_check(ord("D")) 
{
	x = x + 1;
   image_angle = 270;
   object_set_sprite(obj_commie, spr_unarmed);

}
//diagonal movement
if keyboard_check(ord("W")) && keyboard_check(ord("A"))
{
	image_angle = 45;
}
if keyboard_check(ord("W")) && keyboard_check(ord("D"))
{
	image_angle = 315;
}
if keyboard_check(ord("S")) && keyboard_check(ord("A"))
{
	image_angle = 135;
}
if keyboard_check(ord("S")) && keyboard_check(ord("D"))
{
   image_angle = 225;
}
if keyboard_check(ord("W")) && keyboard_check(ord("A"))
{
	image_angle = 45;
}
if keyboard_check(ord("W")) && keyboard_check(ord("D"))
{
	image_angle = 315;
}
if keyboard_check(ord("S")) && keyboard_check(ord("A"))
{
	image_angle = 135;
}
if keyboard_check(ord("S")) && keyboard_check(ord("D"))
{
   image_angle = 225;
}
//shooting
if can_shoot = true
{
	if (mouse_check_button(mb_left))
	instance_create_layer(x, y, "Instances", obj_bullet);
	cooldown = 1;
}
///HELP
if trigger = 0
{
	object_set_sprite(obj_commie, spr_unarmed_idle);
}
if trigger = 1
{
	object_set_sprite(obj_commie, spr_unarmed);
}

//idle
if keyboard_check_pressed(vk_lshift) && keyboard_check(ord("W")) && trigger = 0// state = PLAYERSTATE.IDLE
{
	y = y - 5
	object_set_sprite(obj_commie, spr_unarmed_idle);
}
if keyboard_check_pressed(vk_lshift) && keyboard_check(ord("A")) && trigger = 0// state = PLAYERSTATE.IDLE
{
	x = x - 5
	trigger = 1;
}
if keyboard_check_pressed(vk_lshift) && keyboard_check(ord("S")) && trigger = 0// state = PLAYERSTATE.IDLE
{
	y = y + 5;
	trigger = 1;
}
if keyboard_check_pressed(vk_lshift) && keyboard_check(ord("D")) && trigger = 0//state = PLAYERSTATE.IDLE
{
	x = x + 5
	trigger = 1;
}
//if (PLAYERSTATE.IDLE)
//{
//	object_set_sprite(obj_commie, spr_unarmed_idle);
//}

//if (PLAYERSTATE.MOVING)
//{
//	object_set_sprite(obj_commie, spr_unarmed);
//}
