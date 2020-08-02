/home/coa/cob/PhoenixMiner_5.0e_Linux/PhoenixMiner -pool asia1.ethermine.org:14444 -wal 0xeDF1fbD70cCdD83e19fdDc5BAb319312dbf88B6F.0700 -pool2 asia1.ethermine.org:14444 -pass x -worker 0700 -proto 2 -log 0 -ptimeout 60 -wdog 0 -amd

PIDNUM=$(pidof -x PhoenixMiner)

if [ "$(PIDNUM)" > 0 ]; then
	echo 1234 | sudo -S kill -9 $PIDNUM
	exit
fi

if [ -z "$PIDNUM" ]; then
	/usr/bin/xfce4-terminal --working-directory=/home/coa/cob/PhoenixMiner_5.0e_Linux/ -x /home/coa/cob/PhoenixMiner_5.0e_Linux/start_miner.sh
fi
