if keyboard_check(ord("W"))
{
	y = y - 1;
	image_angle = 0;
}
if keyboard_check(ord("A"))
{
   image_angle = 90;
   x = x - 1;
}
if keyboard_check(ord("S"))
{
	y = y + 1;
	image_angle = 180;
}
if keyboard_check(ord("D")) 
{
	x = x + 1;
   image_angle = 270;
}

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	cooldown = 20;
}
cooldown = cooldown - 1;
