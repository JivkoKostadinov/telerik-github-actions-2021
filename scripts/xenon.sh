#!/usr/bin/env bash
echo "=================== SCRIPT ================"
cat ./scripts/xenon.sh
echo "=================== END ==================="

# Cyclomatic Complexity 6-10, Rank B, Risk low - well structured and stable block
xenon . --max-absolute B --max-modules A --max-average A --e behave-parallel.py,core/api/appointments_api.py