#!/bin/bash
export DB_HOST=$1
export APP_HOST=$2

#create attribute file

cat > json/test_db_attributes.json << EOF
{
  "s4h": {
    "version": "1506"
  },
  "hana": {
    "sid": "H50",
    "instance": "00",
    "password": "Start1234",
    "revision": "82",
    "syspassword": "Start1234",
    "checkhardware": "false"
  },
  "sap-lvm": {
    "filesystem": "ext3",
    "sapdata_size": "220G",
    "user_sap_sid_size": "10G",
    "sapinst_size": "60G"
  },
  "sapinst": {
    "db_tag": "$DB_HOST",
    "app_tag": "$APP_HOST"
  }
}
EOF