#!/bin/bash

reenable_tty_echo()
{
	stty echo
}

trap reenable_tty_echo EXIT

echo -n "Enter base64 encoded key: "

stty -echo

head -n1 | base64 -d | git crypt unlock -

echo
