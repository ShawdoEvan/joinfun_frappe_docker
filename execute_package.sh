export APPS_JSON_BASE64=$(base64 -w 0 ./apps.json)
docker build \
  --build-arg=FRAPPE_PATH=https://github.com/ShawdoEvan/frappe \
  --build-arg=FRAPPE_BRANCH=develop \
  --build-arg=PYTHON_VERSION=3.11.9 \
  --build-arg=NODE_VERSION=18.20.2 \
  --build-arg=APPS_JSON_BASE64=$APPS_JSON_BASE64 \
  --tag=mnbhjk2/joinfun_erpnext:1.0.1 \
  --file=images/production/Containerfile .
