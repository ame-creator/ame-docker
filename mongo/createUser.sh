#!/bin/bash

mongo -- ame <<EOF
  var admin = db.getSiblingDB('admin');
  var rootUser = '$MONGO_INITDB_ROOT_USERNAME';
  var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD';
  admin.auth(rootUser, rootPassword);
  db.createUser({ user: 'ame', pwd: 'ame2020', roles: [ { role: 'dbOwner', db: 'ame' } ] });
EOF
