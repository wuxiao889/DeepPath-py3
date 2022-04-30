#!/bin/bash

relation=$1

python sl_policy.py $relation  2>&1 | tee  result_$relation.log
python policy_agent.py $relation retrain  2>&1 | tee  result_$relation.log
python policy_agent.py $relation test     2>&1 | tee  result_$relation.log

