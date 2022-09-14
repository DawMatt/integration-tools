# Bulk lint of all yaml files in folder tree
find ./ -type f \( -name "*.yml" -o -name "*.yaml" \) -exec grep -l -e "openapi" -e "swagger" --null {} \;  | xargs -0 -n1 spectral lint --ruleset /opt/.spectral-default.yaml 

# find ./ -type f \( -name "*.yml" -o -name "*.yaml" \) -exec grep -l -e "openapi" -e "swagger" --null {} \;  | xargs -0 -n1 spectral lint 
