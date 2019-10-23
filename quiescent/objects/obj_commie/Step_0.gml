if keyboard_check(ord("W")) dir = state.up;
{
	y = y - 1;
}
if keyboard_check(ord("A")) dir = state.left;
{
   image_xscale = 1;
   image_yscale = 1;
}
if keyboard_check(ord("S"))  dir = state.down;
{
	y = y + 1;
}
if keyboard_check(ord("D")) dir = state.right;
{
	x = x + 1;
   image_xscale = -1;
   image_yscale = 1;
}


