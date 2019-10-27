ini_open("save.ini");
global.level = ini_read_real("save", "level", 1);
ini_close();
room_goto(rm_titlescreen);
audio_play_sound(snd_menu,0,true);