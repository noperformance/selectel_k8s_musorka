#!/bin/zsh

[[ "$BASH_SOURCE" == "$0" ]] && {
    echo "Please 'source' this script, don't execute it directly"
    echo "e.g.:"
    echo "$ source $0"
    return 1 2> /dev/null || exit 1
}

export OS_AUTH_URL="https://api.selvpc.ru/identity/v3"
export OS_IDENTITY_API_VERSION="3"
export OS_VOLUME_API_VERSION="3"

export CLIFF_FIT_WIDTH=1

export OS_PROJECT_DOMAIN_NAME='196399'
export OS_PROJECT_ID='82bbca894b604f75a96b91cf74b4688d'
export OS_TENANT_ID='82bbca894b604f75a96b91cf74b4688d'
export OS_REGION_NAME='ru-1'

export OS_USER_DOMAIN_NAME='196399'
export OS_USERNAME='doberok'

echo "Please enter your OpenStack Password: "
read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT

export TF_VAR_os_auth_url=$OS_AUTH_URL
export TF_VAR_user_name=$OS_USERNAME
export TF_VAR_user_password=$OS_PASSWORD
export TF_VAR_target_zone=$OS_REGION_NAME
export TF_VAR_project_id=$OS_PROJECT_ID
