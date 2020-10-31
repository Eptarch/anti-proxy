#!/usr/bin/env bash
# Tab sign surrounded by two dots: .	.

nginx := -f pac-nginx.yml
proxy := -f tor-proxy.yml

install:
	docker-compose $(nginx) $(proxy) -p TORPROXY build --parallel
	docker-compose $(nginx) $(proxy) -p TORPROXY up -d

uninstall:
	docker-compose $(nginx) $(proxy) -p TORPROXY down -t 10 --rmi all
