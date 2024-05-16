go:
	@sudo sysctl -w vm.max_map_count=262144 && make stop && docker-compose build && docker-compose up -d
stop:
	@docker-compose down --remove-orphans
PHONY: go stop
#sudo chown -R 472:472 /var/lib/grafana 