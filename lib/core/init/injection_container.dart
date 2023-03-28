Future<void> init() async {
  await initExternal();
  await initCore();
  await initFeatures();
}

Future<void> initFeatures() async {}

Future<void> initCore() async {}

Future<void> initExternal() async {}
