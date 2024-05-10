set -x

git submodule update --init --remote --recursive

if [[ $? -eq '0' ]];then
    git commit -a -m "update submodules $(date +%T)"

    if [[ $? -eq '0' ]];then
        git push origin main
    fi
fi