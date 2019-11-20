///needs edits ~ new soundtrack for beginning cutscene
instance_destroy();

room_goto(rm_cutscene);
audio_stop_sound(snd_menu)
audio_play_sound(snd_gameplay,0,true);