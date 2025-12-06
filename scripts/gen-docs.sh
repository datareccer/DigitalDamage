#!/bin/bash

DOCS=../docs/auto-generated.md
echo "# Digital Damage Auto Docs" > $DOCS
echo "Generated: $(date)" >> $DOCS
echo " " >> $DOCS

for script in ../scripts/*.sh; do
    echo "## $(basename $script)" >> $DOCS
    grep "^#" $script | sed 's/#//' >> $DOCS
    echo " " >> $DOCS
done

echo "[Digital Damage] Documentation generated at docs/auto-generated.md"
