#!/bin/bash
echo "Atualizando Arquivo Crontab"
(echo "$(cat /crond/crontab)") | crontab -