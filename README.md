existcheck
==========
Simple library that checks if the input already exists in the database.

   $('element').checkexist();

This will call the plugin which will use $ajax(...) to call the php script.
The script is in charge of doing the database query and returns a json object
that notifies if the input is already existent in the database.
