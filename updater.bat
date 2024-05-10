set -x

git submodule update --init --remote --recursive

if [[ -n $? ]];then
    git commit -a -m "update submodules $(date +%T)"

    if [[ -n $? ]];then
        git push origin main
    fi
fi