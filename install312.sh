#!/bin/bash
###!/bin/env bash
python3.12 -m venv venv312b
source venv312b/bin/activate
pip3 install pip -U
pip3 install -r requirements_python3-12-1.txt
