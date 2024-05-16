go:
	@sudo sysctl -w vm.max_map_count=262144 && make stop && docker-compose build && docker-compose up -d
	sleep 3
	sudo chown -R 472:472 ./grafana
	chmod -R 777 ./grafana
stop:
	@docker-compose down --remove-orphans
PHONY: go stop
