#!/bin/bash
cp ~/my_data/.bashrc.bak ~/.bashrc

# Append planq .bashrc to .bashrc if it's not already there
if ! grep -q "planq" filename; then
  echo "" >> ~/.bashrc
  echo "# Planq additions to .bashrc" >> ~/.bashrc
  echo "source ~/my_data/planq/.bashrc" >> ~/.bashrc
fi


# Reload .bashrc
. ~/.bashrc