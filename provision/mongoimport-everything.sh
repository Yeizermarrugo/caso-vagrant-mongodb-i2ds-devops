#!/usr/bin/env bash
exit_code=0
mongo "${1}" --quiet --eval "db.dropDatabase()"
exit_code=$((exit_code + $?))

for file in jhu/csse_covid_19_data/csse_covid_19_daily_reports/10-*.csv; do
mongoimport --uri "${1}" --collection daily --type csv --headerline --file "${file}" &
exit_code=$((exit_code + $?))
done
wait


echo "$0 finished with code $exit_code."
exit $exit_code