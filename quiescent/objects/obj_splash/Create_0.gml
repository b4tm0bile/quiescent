ini_open("save.ini");
global.level = ini_read_real("save", "level", 1);
ini_close();
room_goto(room_menu);