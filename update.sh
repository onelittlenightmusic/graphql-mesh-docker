#!/bin/bash
over=0.2.8
nver=0.2.9
# sed -i .bak "s/$over/$nver/g" docker-compose.yaml
# docker-compose build
# sed -i .bak "s/$over/$nver/g" helm-src/values.yaml
# cd helm-chart
# ./build.sh
# ./index.sh
# cd ..

sed -i .bak "s/$over/$nver/g" README.md
git add -A
git commit -m "$nver"