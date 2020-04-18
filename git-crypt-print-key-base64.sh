#!/bin/bash

git crypt export-key "$@" -- - | base64 -w 999

