PROJECT_NAME="sarajevo"
LOCATION="westeurope"

az group create --name "${PROJECT_NAME}-rg" --location "${LOCATION}"

az appservice plan create --resource-group "${PROJECT_NAME}-rg" --name "${PROJECT_NAME}-plan" --location "${LOCATION}" --sku "FREE"

az webapp create --resource-group "${PROJECT_NAME}-rg" --plan "${PROJECT_NAME}-plan" --name "${PROJECT_NAME}-web"
