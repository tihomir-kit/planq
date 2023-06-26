#!/bin/bash
cp ~/my_data/.bashrc.bak ~/.bashrc
echo "" >> ~/.bashrc
echo "# Planq additions to .bashrc" >> ~/.bashrc
echo "source ~/my_data/planq/.bashrc" >> ~/.bashrc

# Reload .bashrc
. ~/.bashrc