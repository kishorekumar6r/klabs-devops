###
use distroless images for  building docker, best practises DEVSECOPS

### go build local command
export PRODUCT_CATALOG_PORT=8080
go build -o product-catalog . 

#### Execute go binaries
./product-catalog
