#!/bin/sh

echo "Creating etcd root user..."
etcdctl \
  --endpoints="http://etcd:2379" \
  user add root<<EOF
$ETCD_ROOT_PASS
EOF

echo "Enabling authentication..."

etcdctl \
  --endpoints="http://etcd:2379" \
  auth enable

echo "✅ etcd authentication is now enabled."
