#!/bin/bash
#==========================================================
# Projeto 1: SysAdmin Automation Toolkit - Health Check Script
# Autor: Jonas (Arch Linux Homelab
#==========================================================

LOG_FILE="/tmp/health_check.log"
DATA_HORA=$(date "+%Y-%m-%d %H:%M:%S")

echo "====================================================="
echo "	RELATÓRIO DE SAÚDE DO SISTEMA - $DATA_HORA"
echo "====================================================="

# 1. Tempo de atividade
echo -e "\n[+] Tempo de Atividade do Sistema:"
uptime -p

# 2. Memóri RAM 
echo -e "\n[+] Uso de memória RAM:"
free -h 

# 3. Disco
echo -e "\n[+] Espaço em Disco (Partição Raiz):"
df -h /

# 4. Testando Conectividade 
echo -e "\n[+] Testando Conectividade com a internet (1.1.1.1):"
ping -c 2 1.1.1.1 > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "	[OK] Conexão com a Internet está FUNCIONANDO!"
else
	echo "	[ERRO] Falha na conexão com a Internet!"
fi

# 5. Gravando no Log 
echo "Verificação realizada com sucesso em $DATA_HORA" >> "$LOG_FILE"

echo -e "\n=================================================="
echo " Relatório salvo no log: $LOG_FILE"
echo "=================================================="
