#!/bin/bash
if [ -z .venv ]; then
    python3 -m venv .venv
fi

source .venv/bin/activate
pip install -e ./keria
pip install -e ./keripy
