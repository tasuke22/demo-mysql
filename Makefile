up:
	docker compose up -d
ps:
	docker compose ps
stop:
	docker compose stop
down:
	docker compose down
build:
	docker compose build
logs:
	docker compose logs -f

# 環境
db:
	docker compose exec -it mysql mysql -u root -proot -D demo-sql

# テーブルとビューの削除
clean-db:
	docker compose exec mysql mysql -u root -proot -D demo-sql < /clean_database.sql