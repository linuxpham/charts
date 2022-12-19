CHART_PATH=`pwd`
echo "CHART_PATH=${CHART_PATH}"

echo "Package this chart - undermoon-cluster"
helm package ${CHART_PATH}/charts/undermoon-cluster

echo "Package this chart - undermoon-scheduler"
helm package ${CHART_PATH}/charts/undermoon-scheduler

echo "Package this chart - undermoon-operator"
helm package ${CHART_PATH}/charts/undermoon-operator

helm repo index ${CHART_PATH}/ --url https://linuxpham.github.io/charts