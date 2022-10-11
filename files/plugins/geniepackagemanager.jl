using Genie
using Genie.Requests
using Genie.Renderer.Json
using GeniePackageManager


route("/geniepackagemanager", GeniePackageManager.list_packages)
route("/geniepackagemanager/packages", GeniePackageManager.get_packages)

# REST ENDPOINTS
route("/geniepackagemanager/api/v1/:package::String/add", GeniePackageManager.API.V1.add, method = POST)
reoute("/geniepackagemanager/api/v1/:org::String/:repo::String/add", GeniePackageManager.API.V1.add_with_url, method = POST)
route("/geniepackagemanager/api/v1/:package::String/:version::String/add", GeniePackageManager.API.V1.add_with_version, method = POST)
route("/geniepackagemanager/api/v1/:package::String/dev", GeniePackageManager.API.V1.dev, method = POST)
route("geniepackagemanager/api/v1/:package::String/remove", GeniePackageManager.API.V1.remove_package, method = POST)
route("/geniepackagemanager/api/v1/:package::String/update", GeniePackageManager.API.V1.update_package, method = POST)
route("/geniepackagemanager/api/v1/updateall", GeniePackageManager.API.V1.update_all_packages, method = GET)
