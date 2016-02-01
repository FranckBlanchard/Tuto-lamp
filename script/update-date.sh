#!/bin/sh
# Remplace la chaine @@date@@ dans le fichier donné en argument par la date courante
sed "s/@@date@@/$(date '+%F %T')/" $1
