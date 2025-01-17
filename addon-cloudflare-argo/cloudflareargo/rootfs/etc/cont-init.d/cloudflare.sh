#!/usr/bin/env bashio
declare -a options
#declare certificate
#
#certificate=$(bashio::config 'certificate')

#if ! bashio::fs.directory_exists '/config/cf-argo/'; then
#    mkdir -p /config/cf-argo
#fi
#
#if ! bashio::fs.file_exists "/config/cf-argo/cf-ha.json"; then
#/opt/cloudflared --origincert=${certificate} --cred-file=/config/cf-argo/cf-ha.json tunnel create $(bashio::config 'tunnel_name')
#fi

declare url
#declare service
#declare hostname2
#declare service2
#declare hostname3
#declare service3
declare addconfig

url=$(bashio::config 'url')
#service=$(bashio::config 'service')
#hostname2=$(bashio::config 'hostname2')
#service2=$(bashio::config 'service2')
#hostname3=$(bashio::config 'hostname3')
#service3=$(bashio::config 'service3')
addconfig=$(bashio::config 'addconfig')

if bashio::config.has_value 'url'; then
echo -e "url: ${url}\n" > /config/cf-argo/config.yml
fi
#
#if bashio::config.has_value 'hostname2'; then
#    echo -e "  - hostname: ${hostname2}\n    service: ${service2}\n" >> /config/cf-argo/config.yml
#fi
#
#if bashio::config.has_value 'hostname3'; then
#    echo -e "  - hostname: ${hostname3}\n    service: ${service3}\n" >> /config/cf-argo/config.yml
#fi

if bashio::config.has_value 'addconfig'; then
    cat ${addconfig} >> /config/cf-argo/config.yml
fi

#echo -e "  - service: http_status:404" >> /config/cf-argo/config.yml
