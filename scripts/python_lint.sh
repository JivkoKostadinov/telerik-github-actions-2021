#!/usr/bin/env bash
echo "=================== SCRIPT ================"
cat ./scripts/python_lint.sh
echo "=================== END ==================="

# lint python
if [[ "$OSTYPE" == "msys"* ]];
then
  python -m flake8 --isolated --ignore=F541,F812,H101,H202,H233,H301,H306,H401,H403,H404,H405,H501,F403,E501,E702 --exclude=.virtualenv,node_modules --max-complexity 7
else
  python3 -m flake8 --isolated --ignore=F541,F812,H101,H202,H233,H301,H306,H401,H403,H404,H405,H501,F403,E501,E702 --exclude=.virtualenv,node_modules --max-complexity 7
fi