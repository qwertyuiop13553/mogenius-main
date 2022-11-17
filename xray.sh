#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1b18627d-8e8b-4371-b7ff-c2d14eb7f22d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

