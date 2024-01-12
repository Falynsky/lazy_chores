get:
  fvm flutter clean
  fvm flutter pub get

run_builder:
  fvm flutter pub run build_runner build --delete-conflicting-outputs

gen:
  just get
  fvm flutter pub run build_runner build --delete-conflicting-outputs

watch:
  just get
  fvm flutter pub run build_runner watch --delete-conflicting-outputs

upgrade:
  fvm flutter clean
  fvm flutter packages upgrade
  fvm flutter pub get
  fvm flutter pub run build_runner build --delete-conflicting-outputs