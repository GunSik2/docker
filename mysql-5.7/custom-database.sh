#!/bin/bash

mysql -uroot -p"${MYSQL_ROOT_PASSWORD}" -e "create database test;"
mysql -uroot -p"${MYSQL_ROOT_PASSWORD}" -e "create database paasxpert_portal;"
