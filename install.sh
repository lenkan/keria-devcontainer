#!/bin/bash
source .venv/bin/activate
cd keria && pip install -r requirements.txt && cd ..
pip install -e ./keripy
