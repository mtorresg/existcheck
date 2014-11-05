existcheck
==========
Simple library that check if the input already exist in the database.

$('element').checkexist();

This will call the plugin wich will using $ajax(...) to call the php script.
The script is in charge of doing the database query and returns a json ojbect
that notifies if the input is already existent in the database.
