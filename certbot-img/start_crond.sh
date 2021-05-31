#!/bin/sh

# Stuff to do at container start before crond starts

# Lets start crond for perodic updates
exec crond -f
