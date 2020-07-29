#!/bin/bash

ansible -i inventory web-servers -m ping
