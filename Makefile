

pg:
	fvm flutter pub get

build_web:
	fvm flutter build web --wasm

clean:
	fvm flutter clean

deploy_web:
	make build_web && firebase deploy --only hosting