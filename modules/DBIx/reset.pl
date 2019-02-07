#!/usr/bin/env perl

`rm -f db/example.db`;
`sqlite3 db/example.db < db/example.sql`;
`perl ./insertdb.pl`;
###`rm -rf MyApp`;
